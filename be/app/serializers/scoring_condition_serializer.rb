class ScoringConditionSerializer < ActiveModel::Serializer
  attributes :points, :required_vegetable, :scoring_method
end
