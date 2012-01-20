class Ship < ActiveRecord::Base
  belongs_to :shipping_company
  belongs_to :ship_type
end
