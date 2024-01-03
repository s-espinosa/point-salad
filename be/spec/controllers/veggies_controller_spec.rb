require 'rails_helper'

describe VeggiesController, type: :request do
  describe 'request a veggie' do
    it 'returns a successful response' do
      veggie = Veggie.create(
        color: 'bg-green-600',
        name: 'lettuce',
        png: '/assets/lettuce.png'
      )

      get veggie_path(veggie)

      expect(response).to be_successful
    end
  end
end
