ActiveAdmin.register User do
  filter :email
  filter :nickname

  index do
    selectable_column
    column :id
    column 'Email' do |user|
      link_to user.email, admin_user_path(user)
    end
    column :nickname
    column :last_sign_in_at
  end 

  show do |user|
    attributes_table do
      row :id
      row :email
      row :nickname
      row :last_sign_in_at
      row :profile do |u|
        link_to u.profile. admin_profile_path(user)
      end
    end
  end

  form do |f|
    f.inputs "Login" do
      f.input :email
      f.input :nickname
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end

  controller do
    def permitted_params
      params.permit!
    end
  end
end
