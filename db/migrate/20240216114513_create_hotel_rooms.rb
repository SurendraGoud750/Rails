class CreateHotelRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :hotel_rooms do |t|
      t.string :name_of_room
      t.integer :hotel_id

      t.timestamps
    end
  end
end
