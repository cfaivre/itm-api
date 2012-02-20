class Booking < ActiveRecord::Base
  belongs_to :customer
  belongs_to :ship
  has_many :passengers
  accepts_nested_attributes_for :passengers, :allow_destroy => true
end
