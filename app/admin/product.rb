ActiveAdmin.register Product do
  
  permit_params :name, :price, :pr_description, :group, :picture

  index do
    selectable_column
    id_column
    column :name
    column :price
    column :pr_description
    column :group
    column :picture do |ad|
        image_tag ad.picture.url(:thumb)
      end
    column :updated_at
    column :created_at
    actions
  end

  

  filter :name

  form do |f|
    f.inputs "Product" do
      f.input :name
      f.input :price
      f.input :pr_description
      f.input :group
      f.input :picture
    end
    f.actions
  end
end