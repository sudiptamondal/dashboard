ActiveAdmin.register Bookmark do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :link, :category_id
  #
  # or
  #
  permit_params do
    permitted = [:title, :link, :category_id]
    permitted
  end


    form do |f|
      panel 'Bookmarks' do
        "Bookmarks need to be added for Category"
      end

      inputs  do
        input :category_id, as: :select, collection: Category.joins(:category_set).all.map{|rec| ["#{rec.category_set.category_set_name} -> #{rec.category_name}", rec.id]} 
        input :title
        input :link
      end

      para "Press cancel to return to the list without saving."
      actions
    end



  
end
