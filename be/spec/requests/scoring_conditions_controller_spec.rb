require 'rails_helper'

describe ScoringConditionsController, type: :request do
  describe 'request a scoring condition' do
    it 'returns a successful response' do      
      scoring_condition = ScoringCondition.create(
        points: 5,
        required_vegetables: [:cabbage, :lettuce].to_json,
        scoring_method: 'set',
      )

      get scoring_condition_path(scoring_condition)

      expect(response).to be_successful
    end
  end
end
