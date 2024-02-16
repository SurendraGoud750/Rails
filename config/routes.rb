Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "hotel_bookings#index"

  resources :hotel_bookings

  get 'list_of_booked_room', to: "hotel_bookings#list_of_booked_room"
end
