class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps null: false
    end
  end
end
