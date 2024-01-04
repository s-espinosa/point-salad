require 'rails_helper'

describe ScoringConditionsController, type: :request do
  describe 'request a scoring condition' do
    it 'returns a successful response' do
      cabbage = Veggie.create(
        name: 'cabbage',
        color: 'fuchsia-800',
        png: '/assets/cabbage.png'
      )
      lettuce = Veggie.create(
        name: 'lettuce',
        color: 'green-600',
        png: '/assets/lettuce.png'
      )
      
      scoring_condition = ScoringCondition.create(
        points: 5,
        required_veggies: [cabbage, lettuce],
        scoring_method: 'set'
      )

      get scoring_condition_path(scoring_condition)

      expect(response).to be_successful
    end
  end
end
