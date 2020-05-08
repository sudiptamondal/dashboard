ActiveAdmin.register HealthProfile do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :Profile_id, :weight, :fat, :total_body_water, :muscle_mass, :bone_weight, :calorie_requirement, :bmi, :visceral_fat, :bio_age
  #
  # or
  #
  # permit_params do
  #   permitted = [:Profile_id, :weight, :fat, :total_body_water, :muscle_mass, :bone_weight, :calorie_requirement, :bmi, :visceral_fat, :bio_age]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :Profile_id, :weight, :fat, :total_body_water, :muscle_mass, :bone_weight, :calorie_requirement, :bmi, :visceral_fat, :bio_age
  
end
