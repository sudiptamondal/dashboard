ActiveAdmin.register CategorySet do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :category_set_name
  #
  # or
  #
  permit_params do
    permitted = [:category_set_name]
    permitted
  end
  
end
