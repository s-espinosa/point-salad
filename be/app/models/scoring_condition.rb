class ScoringCondition < ApplicationRecord
  has_many :card_conditions
  has_many :scoring_cards, through: :card_conditions
  has_many :veggie_conditions
  has_many :required_veggies, through: :veggie_conditions
end
