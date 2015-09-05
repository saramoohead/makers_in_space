class BookingsController < ApplicationController

  def index
    if Booking.all.any?
      @most_recent = (Booking.all.sort_by {|k,v| v}.reverse).first.firstname
    end
  end

  def create
    Booking.create(booking_params)
    redirect_to '/'
  end

  def booking_params
    params.require(:booking).permit(:firstname, :lastname, :email)
  end

end
