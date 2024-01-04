class CreateVeggieConditions < ActiveRecord::Migration[7.1]
  def change
    create_table :veggie_conditions do |t|
      t.references :card_condition, null: false, foreign_key: true
      t.references :veggie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
