class CreateScoringCard < ActiveRecord::Migration[7.1]
  def change
    create_table :scoring_cards do |t|
      t.string :scoring_description
      t.references :veggie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
