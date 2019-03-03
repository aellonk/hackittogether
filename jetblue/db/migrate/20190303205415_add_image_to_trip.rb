class AddImageToTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :image, :string
  end
end
