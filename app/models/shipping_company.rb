class ShippingCompany < ActiveRecord::Base
  has_many :ships
  has_many :shipping_company_top_offers
end
