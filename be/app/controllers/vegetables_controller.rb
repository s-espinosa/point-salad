class VegetablesController < ApplicationController
  def show
    @veggie = Vegetable.find(params[:id])
    render json: @veggie
  end
end
