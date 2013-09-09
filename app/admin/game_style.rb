ActiveAdmin.register GameStyle do
  filter :title
  
  menu parent: "Groups"

  index do
    selectable_column
    column :id
    column :title do |g|
      link_to g.title, admin_game_path(g)
    end
    column "Groups" do |g|
      g.groups.length
    end
  end

  show do |g|
    attributes_table do
      row :id
      row :title
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :title
    end
    f.buttons
  end

  controller do
    def permitted_params
      params.permit!
    end
  end
end
