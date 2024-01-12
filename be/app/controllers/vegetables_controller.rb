class VegetablesController < ApplicationController
  def show
    @vegetable = Vegetable.find(params[:id])
    render json: @vegetable, serializer: VegetableSerializer
  end
end
