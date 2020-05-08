ActiveAdmin.register Product do
  permit_params :name, :product_type, :url


  form do |f|
    f.inputs do
      f.input :name
      f.input :product_type, collection: ["Wishlist"]
      f.input :url
    end
    f.actions
  end
  
end
