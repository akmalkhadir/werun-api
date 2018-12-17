class Api::V1::RunnersController < ApplicationController

  before_action :set_runner, only: [:show]

  def index
    @runners = Runner.all
    render json: @runners
  end

  def show
    render json: @runner
  end

  private

  def set_runner
    @runner = Runner.find(params[:id])
  end

  def runner_params
    params.require(:runner).permit(:id)
  end
end
