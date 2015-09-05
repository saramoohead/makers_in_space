require 'rails_helper'

feature 'Bookings' do
  context 'Booking a flight' do
    scenario 'should welcome the user' do
      visit '/'
      expect(page).to have_css "h2", text: "MAKERS IN SPACE" 
      expect(page).to have_css "p", text: "Welcome to the ride of your life."
    end

    scenario 'should start with 8 seats available' do
      visit '/'
      expect(page).to have_css "p", text: "8 seats available"
    end

    scenario 'display seats available' do
      Booking.create(firstname: "Sara", lastname: "OC", email: "sara@sara.com")
      visit '/'
      expect(page).to have_content('7 seats available')
      expect(page).not_to have_content('8 seats available')
    end

    scenario 'book a flight and see named confirmation' do
      visit '/'
      fill_in 'firstname', with: 'Sara'
      fill_in 'lastname', with: 'OC'
      fill_in 'email', with: 'sara@sara.com'
      click_button("Book now")
      expect(page).to have_content('Sara has just booked a flight.')
    end

    scenario 'book a flight and see most recent named confirmation' do
      visit '/'
      fill_in 'firstname', with: 'Sara'
      fill_in 'lastname', with: 'OC'
      fill_in 'email', with: 'sara@sara.com'
      click_button("Book now")
      fill_in 'firstname', with: 'Neil'
      fill_in 'lastname', with: 'OC'
      fill_in 'email', with: 'neil@neil.com'
      click_button("Book now")
      expect(page).to have_content('Neil has just booked a flight.')
    end

  end

end