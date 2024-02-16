class HotelBooking < ApplicationRecord
	belongs_to :user
	belongs_to :hotel
	belongs_to :hotel_room
    
    enum status: %i[available closed booked]

end
