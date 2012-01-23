ActiveAdmin.register TopOffer do

  index do
    column "Description", :description
    column "Detailed description", :detailed_description
    column "Minimum Number of Days", :minimum_number_of_days
    column "Maximum Number of Days", :maximum_number_of_days
    column "Price", :price
    column "Link to more info", :link_to_more_info
    column "Offer Start Date", :offer_start_date, :as => :datepicker
    column "Offer End Date", :offer_end_date, :as => :datepicker
    column "Request Offer From", :request_offer_from, :as => :datepicker
    column "Request Offer Until", :request_offer_until, :as => :datepicker
    column "Image" do |top_offer|
      link_to image_tag(top_offer.image.url(:thumb))#, admin_post_path(image)
    end
    default_actions
  end

  show do |top_offer|
    attributes_table_for top_offer do
      [:description, :detailed_description, :minimum_number_of_days, :maximum_number_of_days,
       :price, :link_to_more_info, :offer_start_date, :offer_end_date, :request_offer_from, :request_offer_until].each do |column|
          row column
        end
    end
    div do
      link_to image_tag(top_offer.image.url(:thumb))#, admin_post_path(image)
    end
    active_admin_comments
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :ship_id
      f.input :shipping_company_id
      f.input :description
      f.input :detailed_description
      f.input :minimum_number_of_days
      f.input :maximum_number_of_days
      f.input :price
      f.input :link_to_more_info, :as => :url
      f.input :offer_start_date, :as => :datepicker
      f.input :offer_end_date, :as =>:datepicker
      f.input :request_offer_from, :as => :datepicker
      f.input :request_offer_until, :as => :datepicker
      f.input :image, :as => :file
    end
    f.buttons
  end
end
