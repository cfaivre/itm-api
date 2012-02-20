# encoding: utf-8
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
      f.input :eating_session, :as => :radio, :collection => ["Früh", "Spät"]

      f.input :other
    end

    f.has_many :passengers do |pass_f|
      pass_f.inputs "Passengers" do
        if !pass_f.object.nil?
          # show the destroy checkbox only if it is an existing passenger
          # else, there's already dynamic JS to add / remove new passengers
          pass_f.input :_destroy, :as => :boolean, :label => "Destroy?"
        end
        pass_f.input :first_name
        pass_f.input :last_name
        pass_f.input :nationality
        pass_f.input :date_of_birth
        pass_f.input :place_of_birth
        pass_f.input :passport_number
        pass_f.input :passport_date_issued
        pass_f.input :passport_place_issued
        pass_f.input :passport_valid_until
      end
    end

    f.buttons
  end

end