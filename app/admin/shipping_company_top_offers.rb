ActiveAdmin.register ShippingCompanyTopOffer do
  index do
    column "Title Headline", :title_headline
    column "Title Offer", :title_offer
    column "Description", :description
    column "Duration", :duration
    column "Price", :price
    column "Link to more info", :link_to_more_info
    column "Offer Active From", :offer_active_from, :as => :datepicker
    column "Offer Active Until", :offer_active_until, :as => :datepicker
    column "Offer Valid From", :offer_valid_from, :as => :datepicker
    column "Offer Valid Until", :offer_valid_until, :as => :datepicker
    column "Image" do |top_offer|
      link_to image_tag(top_offer.image.url(:thumb))#, admin_post_path(image)
    end
    column "Shipping Company" do |sc_top_offer|
      sc_top_offer.shipping_company.name
    end
    default_actions
  end

  show do |top_offer|
    attributes_table_for top_offer do
      [:title_headline, :title_offer, :description, :duration,
       :price, :link_to_more_info, :offer_valid_from, :offer_valid_until, :offer_active_from, :offer_active_until, :shipping_company_id].each do |column|
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
      f.input :shipping_company, :as => :select, :collection => ShippingCompany.all
      f.input :title_headline
      f.input :title_offer
      f.input :description
      f.input :duration
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
