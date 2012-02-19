ActiveAdmin.register ShippingCompany do
  menu :if => proc{ can?(:manage, ShippingCompany) }
  
end
