class ScoringConditionsController < ApplicationController
  def show
    @scoring_condition = ScoringCondition.find(params[:id])

    render json: @scoring_condition
  end
end
