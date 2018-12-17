class Api::V1::RunsController < ApplicationController
    before_action :set_run, only: [:show]
  
  def index
    @runs = Run.all
    render json: @runs
  end

  def show
    render json: @run
  end

   private

  def set_run
    @run = Run.find(params[:id])
  end

  def run_params
    params.require(:run).permit(:id)
  end

end
