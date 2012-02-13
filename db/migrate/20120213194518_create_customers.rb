class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth
      t.string :email_address
      t.string :telephone
      t.string :cellphone
      t.string :fax
      t.string :street_address
      t.string :suburb
      t.string :postcode
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
