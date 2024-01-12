class ScoringConditionSerializer < ActiveModel::Serializer
  attributes :points, :required_vegetables, :scoring_method
end
