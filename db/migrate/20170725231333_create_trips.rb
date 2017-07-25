class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :description
      t.date :trip_date
      t.integer :user_id

      t.timestamps
    end
  end
end
