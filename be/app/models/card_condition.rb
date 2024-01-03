class CardCondition < ApplicationRecord
  belongs_to :scoring_card
  belongs_to :scoring_condition
end
