class ScoringCardsController < ApplicationController
  def show
    @scoring_card = ScoringCard.find(params[:id])

    render json: @scoring_card, serializer: ScoringCardSerializer
  end
end
