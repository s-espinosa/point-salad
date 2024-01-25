require 'rails_helper'

describe ScoringCardsController, type: :request do
  describe 'request a scoring card' do
    it 'returns a successful response' do
      scoring_condition = ScoringCondition.create(
        points: 2,
        required_vegetables: [:onion].to_json,
        scoring_method: 'pointsPer'
      )
      lettuce = Vegetable.create(
        color: 'bg-green-600',
        name: 'lettuce',
        png: '/assets/lettuce.png'
      )
      scoring_card = ScoringCard.create(
        scoring_description: '2/lettuce',
        scoring_conditions: [scoring_condition],
        vegetable: lettuce
      )

      get scoring_card_path(scoring_card)

      expect(response).to be_successful
    end
  end

  describe 'request all scoring cards' do
    it 'returns all scoring cards' do
      lettuce_scoring = ScoringCondition.create(
        points: 2,
        required_vegetables: [:lettuce].to_json,
        scoring_method: 'pointsPer'
      )
      onion_scoring = ScoringCondition.create(
        points: 2,
        required_vegetables: [:lettuce].to_json,
        scoring_method: 'pointsPer'
      )
      lettuce = Vegetable.create(
        color: 'bg-green-600',
        name: 'lettuce',
        png: '/assets/lettuce.png'
      )
      onion = Vegetable.create(
        color: 'pink-700',
        name: 'onion',
        png: '/assets/onion.png'
      )
      ScoringCard.create(
        scoring_description: '2/lettuce',
        scoring_conditions: [lettuce_scoring],
        vegetable: lettuce
      )
      ScoringCard.create(
        scoring_description: '2/onion',
        scoring_conditions: [onion_scoring],
        vegetable: onion
      )

      get scoring_cards_path

      expect(response).to be_successful
    end

    it 'filters non-soloable cards' do
      lettuce_scoring = ScoringCondition.create(
        points: 2,
        required_vegetables: [:lettuce].to_json,
        scoring_method: 'pointsPer'
      )
      onion_scoring = ScoringCondition.create(
        points: 2,
        required_vegetables: [:lettuce].to_json,
        scoring_method: 'pointsPer'
      )
      lettuce = Vegetable.create(
        color: 'bg-green-600',
        name: 'lettuce',
        png: '/assets/lettuce.png'
      )
      onion = Vegetable.create(
        color: 'pink-700',
        name: 'onion',
        png: '/assets/onion.png'
      )
      ScoringCard.create(
        scoring_description: '2/lettuce',
        scoring_conditions: [lettuce_scoring],
        vegetable: lettuce,
        soloable: false
      )
      ScoringCard.create(
        scoring_description: '2/onion',
        scoring_conditions: [onion_scoring],
        vegetable: onion,
        soloable: true
      )

      get scoring_cards_path(soloable: true)

      expect(response.parsed_body.count).to eq(1)
    end
  end
end
