require 'rails_helper'

describe ScoringCardsController, type: :request do
  describe 'request a scoring card' do
    it 'returns a successful response' do
      onion = Vegetable.create(
        name: 'onion',
        color: 'pink-700',
        png: '/assets/onion.png'
      )
      scoring_condition = ScoringCondition.create(
        points: 2,
        required_vegetables: [onion],
        scoring_method: 'pointsPer'
      )
      vegetable = Vegetable.create(
        color: 'bg-green-600',
        name: 'lettuce',
        png: '/assets/lettuce.png'
      )
      scoring_card = ScoringCard.create(
        scoring_description: '2/onion',
        scoring_conditions: [scoring_condition],
        vegetable: vegetable
      )

      get scoring_card_path(scoring_card)

      expect(response).to be_successful
    end
  end
end
