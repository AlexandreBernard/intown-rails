class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.references :trip
      t.references :friend
      t.string :location
      t.string :timeslots

      t.timestamps
    end
  end
end
