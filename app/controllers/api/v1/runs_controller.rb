# frozen_string_literal: true

class Api::V1::RunsController < ApplicationController
  before_action :set_run, only: [:show]

  def index
    @runs = Run.all
    render json: @runs
  end

  def show
    render json: @run
  end

  def create
    @run = Run.new(run_params)
    if @run.save
      render json: @run
    else
      render json: {error: 'Unable to create a run.'}, status: 400
    end
  end

  private

  def set_run
    @run = Run.find(params[:id])
  end

  def run_params
    params.require(:run).permit(:name, :description, :start_location, :end_location, :date, :distance, :private, :runner_id)
  end

end