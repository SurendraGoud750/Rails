class HotelBooking < ApplicationRecord
	belongs_to :user
	belongs_to :hotel
	belongs_to :hotel_room
    
    enum status: %i[available closed booked]
    
    validates :check_in_date, :check_out_date, :hotel_room_id, :hotel_id, :user_id, presence: true
    validates :check_out_date, presence: true, date: { after_or_equal_to:  :check_in_date}
end
