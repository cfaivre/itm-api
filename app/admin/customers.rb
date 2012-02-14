ActiveAdmin.register Customer do
=begin
    form do |f|
    f.inputs "Details" do # customer's fields
      f.input :first_name
      f.input :last_name
    end

    f.has_many :bookings do |booking|
      booking.inputs "Bookings" do
        if !booking.object.nil?
          # show the destroy checkbox only if it is an existing booking
          # else, there's already dynamic JS to add / remove new bookingss
          booking.input :_destroy, :as => :boolean, :label => "Destroy?"
        end

        booking.input :ship_id # it should automatically generate a drop-down select to choose from your existing patients
        booking.input :booking_number
      end
    end
    end
=end
  form do |f|
    f.inputs "Details" do # customer's fields
      f.input :username
      f.input :password
      f.input :first_name
      f.input :last_name
      f.input :gender
      f.input :date_of_birth, :as => :datepicker
      f.input :email_address
      f.input :telephone
      f.input :cellphone
      f.input :fax
      f.input :street_address
      f.input :suburb
      f.input :postcode
      f.input :city
      f.input :state
      f.input :country
    end
    f.buttons
  end
end