class ChangeRoomId < ActiveRecord::Migration[7.0]
  def change
    rename_column :hotel_bookings, :room_id, :hotel_room_id
  end
end
