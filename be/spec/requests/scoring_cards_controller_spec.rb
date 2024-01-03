require 'rails_helper'

describe ScoringCardsController, type: :request do
  describe 'request a scoring card' do
    it 'returns a successful response' do
      scoring_condition = ScoringCondition.create(
        points: 2,
        required_vegetable: 'onion',
        scoring_method: 'pointsPer'
      )
      veggie = Veggie.create(
        color: 'bg-green-600',
        name: 'lettuce',
        png: '/assets/lettuce.png'
      )
      scoring_card = ScoringCard.create(
        scoring_description: '2/onion',
        scoring_conditions: [scoring_condition],
        veggie: veggie
      )

      get scoring_card_path(scoring_card)

      expect(response).to be_successful
    end
  end
end
