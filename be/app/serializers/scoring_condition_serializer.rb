class ScoringConditionSerializer < ActiveModel::Serializer
  attributes :points, :required_veggies, :scoring_method
end
