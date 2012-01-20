class ShipType < ActiveRecord::Base
  has_many :ships
  attr_accessible :short_description

  def display_name
    "#{short_description}"
  end

end
