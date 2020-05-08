ActiveAdmin.register Profile do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :dob
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :dob]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :name, :dob


  form do |f|
    f.inputs do
      f.input :name
      f.input :dob, start_year: 1985, end_year: 1995
    end
    f.actions
  end
  
end
