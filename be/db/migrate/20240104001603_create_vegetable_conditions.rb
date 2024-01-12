class CreateVegetableConditions < ActiveRecord::Migration[7.1]
  def change
    create_table :vegetable_conditions do |t|
      t.references :scoring_condition, null: false, foreign_key: true
      t.references :vegetable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
