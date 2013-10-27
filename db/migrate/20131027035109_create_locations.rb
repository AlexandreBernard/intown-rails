class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references  :meeting
      t.integer     :meeting_location_id
      t.float       :latitude
      t.float       :longitude
      t.string      :foursquare

      t.timestamps
    end
  end
end
