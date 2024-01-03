class CreateCardConditions < ActiveRecord::Migration[7.1]
  def change
    create_table :card_conditions do |t|
      t.references :scoring_card, null: false, foreign_key: true
      t.references :scoring_condition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
