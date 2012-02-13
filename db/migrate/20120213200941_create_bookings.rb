class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :customer_id
      t.string :booking_number
      t.string :emergency_contact_first_name
      t.string :emergency_contact_last_name
      t.string :emergency_contact_telephone
      t.integer :ship_id
      t.date :travel_date
      t.decimal :total_price
      t.string :how_to_get_at_ship
      t.string :coming_from
      t.string :eating_session
      t.text :other

      t.timestamps
    end
  end
end
