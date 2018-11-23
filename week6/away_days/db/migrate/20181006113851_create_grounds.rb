class CreateGrounds < ActiveRecord::Migration[5.2]
  def change
    create_table :grounds do |t|
      t.string :name
      t.string :location
      t.string :desc
      t.integer :ground_id

      t.timestamps
    end
  end
end
