ActiveAdmin.register User do
  menu priority: 2
  permit_params :profile_picture, :first_name, :last_name, :role, :email
  actions :all, except: [:destroy, :new]

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :role
    column :email
    actions
  end
   
  filter :first_name
  filter :last_name
  filter :email
  filter :role

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end  