class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :pubs
      t.string :travel
      t.integer :topic_id

      t.timestamps
    end
  end
end
