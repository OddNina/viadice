ActiveAdmin.register Profile do
  menu parent: "Users"
  filter :first_name
  filter :last_name

  index do
    selectable_column
    column :id do |profile|
      link_to profile.id, admin_profile_path(profile)
    end
    column "Image" do |profile|
      image_tag profile.photo.url(:thumb)
    end
    column :full_name do |profile|
      link_to profile.full_name, admin_profile_path(profile)
    end
    column :user
  end

  show do |p|
    attributes_table do
      row :id
      row :photo do |p|
        image_tag profile.photo.url
      end
      row :first_name
      row :last_name
      row :age
      row :address do |p|
        "#{p.address}, #{p.plz} #{p.city}"
      end
      row :bio
      row :user do |p|
        link_to p.user admin_user_path(p.user)
      end
    end
  end

  form html: { enctype: "multipart/form-data"} do |f|
    f.inputs "Details" do
      f.input :first_name
      f.input :last_name
      f.input :age
      f.input :bio
    end
    f.inputs "Address" do
      f.input :address
      f.input :plz
      f.input :city
    end
    f.inputs "Bild" do
      f.input :photo
    end
    f.buttons
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
