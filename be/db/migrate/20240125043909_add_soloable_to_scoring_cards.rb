class AddSoloableToScoringCards < ActiveRecord::Migration[7.1]
  def change
    add_column :scoring_cards, :soloable, :boolean, default: true
  end
end
