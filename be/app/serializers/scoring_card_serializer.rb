class ScoringCardSerializer < ActiveModel::Serializer
  attributes :scoring_description

  has_many :scoring_conditions
  belongs_to :veggie
end
