ActiveAdmin.register User do
  permit_params :email, :username, :password

  index do
    selectable_column
    id_column
    column :username
    column :email
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :username
      f.input :email
      f.input :password
    end
    f.actions
  end

end
