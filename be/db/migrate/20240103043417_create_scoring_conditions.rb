class CreateScoringConditions < ActiveRecord::Migration[7.1]
  def change
    create_table :scoring_conditions do |t|
      t.integer :points
      t.string :scoring_method

      t.timestamps
    end
  end
end
