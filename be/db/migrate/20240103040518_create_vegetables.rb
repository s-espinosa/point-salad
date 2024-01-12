class CreateVegetables < ActiveRecord::Migration[7.1]
  def change
    create_table :vegetables do |t|
      t.string :color
      t.string :name
      t.string :png

      t.timestamps
    end
  end
end
