class TopOffer < ActiveRecord::Base
  belongs_to :shipping_company

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
