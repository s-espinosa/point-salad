class ScoringCondition < ApplicationRecord
  has_many :card_conditions
  has_many :scoring_cards, through: :card_conditions
end
