class VeggiesController < ApplicationController
  def show
    @veggie = Veggie.find(params[:id])
    render json: @veggie
  end
end
