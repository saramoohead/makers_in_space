require 'spec_helper'

describe Booking do

  it 'knows how many bookings it has' do
    Booking.create(firstname: 'Sara', lastname: 'OC', email: 'sara@sara.com')
    bookings = Booking.all
    expect(bookings.count).to be 1
  end

end
