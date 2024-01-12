class ScoringCard < ApplicationRecord
  belongs_to :vegetable
  has_many :card_conditions
  has_many :scoring_conditions, through: :card_conditions
end
