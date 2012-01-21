ActiveAdmin.register Area do
  index do
    column "Name", :name
    column "Cruise Type" do |ship|
      ship.cruise_type.short_description
    end
    column "Region" do |ship|
      ship.region.name
    end
    column "zid", :zid
    default_actions
  end
end
