require 'rails_helper'

describe VegetablesController, type: :request do
  describe 'request a veggie' do
    it 'returns a successful response' do
      veggie = Vegetable.create(
        color: 'bg-green-600',
        name: 'lettuce',
        png: '/assets/lettuce.png'
      )

      get vegetable_path(veggie)

      expect(response).to be_successful
    end
  end
end
