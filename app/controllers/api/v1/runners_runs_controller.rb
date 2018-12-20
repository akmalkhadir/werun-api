class Api::V1::RunnersRunsController < ApplicationController

  def index
    @runners_run = RunnersRun.all
    render json: @runners_run
  end


  def create
    @runners_run = RunnersRun.new(runners_run_params)
    if @runners_run.save!
      render json: @runners_run
    else
      render json: {error: 'Unable to create join a run!'}, status: 400
    end
  end

  def destroy
    @runners_run = RunnersRun.find_by(runners_run_params)
    @runners_run.destroy!
  end

  private

  def runners_run_params
    params.require(:runners_run).permit(:run_id, :runner_id)
  end
end
