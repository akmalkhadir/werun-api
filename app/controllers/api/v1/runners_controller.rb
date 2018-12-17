class Api::V1::RunnersController < ApplicationController

  def index
    @runners= Runner.all
    render json: @runners
  end

end
