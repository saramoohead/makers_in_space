Rails.application.routes.draw do

  root 'bookings#index'

  resources :bookings

end
