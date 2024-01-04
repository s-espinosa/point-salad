class VeggieCondition < ApplicationRecord
  belongs_to :required_veggie, class_name: 'Veggie'
  belongs_to :scoring_condition
end