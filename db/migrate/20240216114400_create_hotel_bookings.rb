class CreateHotelBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :hotel_bookings do |t|
      t.datetime :check_in_date
      t.datetime :check_out_date
      t.integer :user_id
      t.string :status
      t.integer :hotel_id
      t.integer :room_id

      t.timestamps
    end
  end
end
