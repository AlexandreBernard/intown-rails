class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :location
      t.datetime :from
      t.datetime :to

      t.timestamps
    end
  end
end
