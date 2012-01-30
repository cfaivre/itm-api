ActiveAdmin.register TopOffer do

  index do
    column "Title", :title
    column "Description", :description
    column "Minimum Number of Days", :minimum_number_of_days
    column "Maximum Number of Days", :maximum_number_of_days
    column "Price", :price
    column "Link to more info", :link_to_more_info
    column "Offer Active From", :offer_active_from, :as => :datepicker
    column "Offer Active Until", :offer_active_until, :as => :datepicker
    column "Offer Valid From", :offer_valid_from, :as => :datepicker
    column "Offer Valid Until", :offer_valid_until, :as => :datepicker
    column "Image" do |top_offer|
      link_to image_tag(top_offer.image.url(:thumb))#, admin_post_path(image)
    end
    default_actions
  end

  show do |top_offer|
    attributes_table_for top_offer do
      [:title, :description, :minimum_number_of_days, :maximum_number_of_days,
       :price, :link_to_more_info, :offer_valid_from, :offer_valid_until, :offer_active_from, :offer_active_until].each do |column|
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
      f.input :shipping_company_id
      f.input :title
      f.input :description
      f.input :minimum_number_of_days
      f.input :maximum_number_of_days
      f.input :price
      f.input :link_to_more_info, :as => :url
      f.input :offer_active_from, :as => :datepicker
      f.input :offer_active_until, :as =>:datepicker
      f.input :offer_valid_from, :as => :datepicker
      f.input :offer_valid_until, :as => :datepicker
      f.input :image, :as => :file
    end
    f.buttons
  end
end
