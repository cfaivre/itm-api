class ShippingCompany < ActiveRecord::Base
  has_many :ships
  has_many :top_offers
end
