class ScoringCondition < ApplicationRecord
  has_many :card_conditions
  has_many :scoring_cards, through: :card_conditions
  has_many :vegetable_conditions
  has_many :required_vegetables, through: :vegetable_conditions
end
