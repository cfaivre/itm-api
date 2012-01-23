class TopOffer < ActiveRecord::Base
  belongs_to :ship
  belongs_to :shipping_company
end
