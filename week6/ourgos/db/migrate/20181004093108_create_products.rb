class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.integer :stock
      t.float :price
      t.integer :cnum
      t.string :pic

      t.timestamps
    end
  end
end
