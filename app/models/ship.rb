class Ship < ActiveRecord::Base
  belongs_to :shipping_company
  belongs_to :cruise_type
  has_many :top_offers
end
