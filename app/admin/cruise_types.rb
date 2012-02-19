ActiveAdmin.register CruiseType do
  menu :if => proc{ can?(:manage, CruiseType) }
  
end
