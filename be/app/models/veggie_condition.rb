class VeggieCondition < ApplicationRecord
  belongs_to :required_veggie, class_name: 'Veggie', foreign_key: 'veggie_id'
  belongs_to :scoring_condition
end