class HotelBookingsController < ApplicationController

	def index
		@hotels = Hotel.all
	end


	def show
		@hotel = Hotel.find(params[:id])
		@hotel_rooms = HotelRoom.where(hotel_id: @hotel)
		@hotel_booking = HotelBooking.new
	end


	def create
		@hotel = Hotel.find(params[:hotel_id])
		@hotel_booking = HotelBooking.new(hotel_booking_params)
		if @hotel_booking.save
			redirect_to hotel_bookings_path
		else
		   redirect_to hotel_booking_path(@hotel) 
		end 
	end

	def update
		@hotel = Hotel.find(params[:hotel_id])
		@hotel_booking = HotelBooking.find(params[:id])
		if @hotel_booking.update(hotel_booking_params)
			redirect_to hotel_bookings_path
		else
		   redirect_to hotel_booking_path(@hotel) 
		end 
	end

	def edit
		@hotel = Hotel.find(params[:id])
		@hotel_rooms = HotelRoom.where(hotel_id: @hotel)
		@hotel_booking = HotelBooking.find(params[:hotel_booking_id])
	end

	def destroy
		@hotel_booking = HotelBooking.find(params[:id])
		@hotel_booking.destroy
		redirect_to hotel_bookings_path
	end 

	def list_of_booked_room
		@hotel_bookings = HotelBooking.where(hotel_id: params[:hotel_id])
	end 

	private 

	def hotel_booking_params
      params.require(:hotel_booking).permit(:hotel_room_id, :check_in_date, :check_out_date).merge(:user_id => 1, hotel_id: params[:hotel_id], status: 2)
	end 

    
end
