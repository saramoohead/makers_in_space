class BookingsController < ApplicationController

  def index
  end

  def create
    Booking.create(booking_params)
    redirect_to '/'
  end

  def booking_params
    params.require(:booking).permit(:firstname, :lastname, :email)
  end

end
