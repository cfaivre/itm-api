class CruiseType < ActiveRecord::Base
  has_many :ships
  has_many :areas
  attr_accessible :short_description

  def display_name
    "#{short_description}"
  end
end
