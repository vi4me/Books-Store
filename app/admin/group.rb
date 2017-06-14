ActiveAdmin.register Group do
  permit_params :title, :text

  index do
    selectable_column
    id_column
    column :title
    column :text
    column :updated_at
    column :created_at
    actions
  end

  filter :name

  form do |f|
    f.inputs "Group" do
      f.input :title
      f.input :text
    end
    f.actions
  end

end