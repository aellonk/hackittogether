class AddDestinationIdToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :destination_id, :integer
  end
end
