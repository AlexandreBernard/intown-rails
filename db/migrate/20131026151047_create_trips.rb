class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :location
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
