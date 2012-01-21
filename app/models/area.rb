class Area < ActiveRecord::Base
  belongs_to :region
  belongs_to :cruise_type
end
