ActiveAdmin.register TopOffer do

  index do
    column "Description", :description
    column "Detailed description", :detailed_description
    column "Minimum Number of Days", :minimum_number_of_days
    column "Maximum Number of Days", :maximum_number_of_days
    column "Price", :price
    column "Link to more info", :link_to_more_info
    column "Offer Start Date", :offer_start_date
    column "Offer End Date", :offer_end_date
    column "Request Offer From", :request_offer_from
    column "Request Offer Until", :request_offer_until
    column "Image" do |top_offer|
      link_to image_tag(top_offer.image.url(:thumb))#, admin_post_path(image)
    end
    default_actions
  end

#  <%= image_tag @user.avatar.url %>
#<%= image_tag @user.avatar.url(:medium) %>
#<%= image_tag @user.avatar.url(:thumb) %>

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :ship_id
      f.input :shipping_company_id
      f.input :description
      f.input :detailed_description
      f.input :minimum_number_of_days
      f.input :maximum_number_of_days
      f.input :price, :as => :date
      f.input :link_to_more_info, :as => :url
      f.input :offer_start_date, :as => :date
      f.input :image, :as => :file
      f.input :offer_end_date, :as =>:date
      f.input :request_offer_from, :as => :date
      f.input :request_offer_until, :as => :date
    end
    f.buttons
  end
end
