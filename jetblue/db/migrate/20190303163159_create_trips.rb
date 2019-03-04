class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :location
      t.string :price
      t.string :category
      t.string :title
      t.string :description, array: true
      t.string :reward
      t.string :image
      t.timestamps
    end
  end
end
