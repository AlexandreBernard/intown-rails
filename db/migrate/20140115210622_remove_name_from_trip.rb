class RemoveNameFromTrip < ActiveRecord::Migration
  def change
    remove_column :trips, :name
  end
end
