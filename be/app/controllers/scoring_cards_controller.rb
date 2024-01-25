class ScoringCardsController < ApplicationController
  def show
    @scoring_card = ScoringCard.find(params[:id])

    render json: @scoring_card, serializer: ScoringCardSerializer
  end

  def index
    @scoring_cards = ScoringCard.all
    @scoring_cards = @scoring_cards.where(soloable: true) if params[:soloable] == "true"

    render json: @scoring_cards, each_serializer: ScoringCardSerializer
  end
end
