class Api::V1::RunnersController < ApplicationController

  before_action :set_runner, only: [:show, :update]

  def index
    @runners = Runner.all
    render json: @runners
  end

  def show
    render json: @runner
  end

  def update
    if @runner.runners_runs.create!(runner_params)
       render json: @runner
    else
      render json: {error: 'Unable to create join this run.'}, status: 400
    end
  end

  private

  def set_runner
    @runner = Runner.find(params[:id])
  end

  def runner_params
    params.require(:runner).permit(:id, :run_id)
  end
end
