ActiveAdmin.register Ship do
  index do
    column "Name", :short_name
    column "Shipping Company" do |ship|
      ship.shipping_company.name
    end
    column "Cruise Type" do |ship|
      ship.cruise_type.short_description
    end
    column "Sid", :sid
    default_actions
  end

end
