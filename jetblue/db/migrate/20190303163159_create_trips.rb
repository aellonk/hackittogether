class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :location
      t.integer :price
      t.string :category
      t.string :title
      t.string :description
      t.string :reward

      t.timestamps
    end
  end
end
