ActiveAdmin.register Booking do
  menu :if => proc{ can?(:manage, Booking) }
  form do |f|
    f.inputs "Details" do
      f.input :customer, :as => :select, :collection => Customer.all
      f.input :booking_number
      f.input :emergency_contact_first_name
      f.input :emergency_contact_last_name
      f.input :emergency_contact_telephone
      f.input :ship, :as => :select, :collection => Ship.all
      f.input :travel_date, :as => :datepicker
      f.input :total_price
      f.input :how_to_get_at_ship
      f.input :coming_from
      f.input :eating_session
      f.input :other
    end
    f.buttons
  end
end
