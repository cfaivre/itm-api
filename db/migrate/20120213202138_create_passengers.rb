class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.integer :booking_id
      t.string :first_name
      t.string :last_name
      t.string :nationality
      t.date :date_of_birth
      t.date :place_of_birth
      t.string :passport_number
      t.date :passport_date_issued
      t.string :passport_place_issued
      t.date :passport_valid_until

      t.timestamps
    end
  end
end
