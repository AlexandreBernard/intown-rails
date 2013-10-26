class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :emails
      t.string :phones

      t.timestamps
    end
  end
end
