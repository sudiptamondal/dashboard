ActiveAdmin.register Category do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :category_set_id, :category_name
  #
  # or
  #
  permit_params do
    permitted = [:category_set_id, :category_name]
    permitted
  end


  action_item :new_category, only: [:show,:edit] do 
    link_to 'New Category', "/admin/categories/new"
  end


    form do |f|
      panel 'Category' do
        "Categories need to be created under Category Sets"
      end
      inputs  do
        input :category_set_id, as: :select, collection: CategorySet.all.map{|rec| [rec.category_set_name, rec.id]} 
        input :category_name
      end
      para "Press cancel to return to the list without saving."
      actions
    end
  
end
