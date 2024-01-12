class VegetableCondition < ApplicationRecord
  belongs_to :required_vegetable, class_name: 'Vegetable', foreign_key: 'vegetable_id'
  belongs_to :scoring_condition
end