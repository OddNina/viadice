ActiveAdmin.register Group do
  filter :title
  filter :gamemaster
  filter :game

  index do
    selectable_column
    column :id
    column :image do |g|
      image_tag g.image.url(:thumb)
    end
    column :title do |g|
      link_to g.title, admin_group_path(g)
    end
    column :game do |g|
      if g.game
        link_to g.game, admin_game_path(g.game)
      else
        "-"
      end
    end
    column :gamemaster do |g|
      link_to g.gamemaster, admin_profile_path(g.gamemaster)
    end
    column :members do |g|
      g.profiles.length
    end
  end

  show do |g|
    attributes_table do
      row :id
      row :image do |g|
        image_tag g.image.url
      end
      row :title
      row :description
      row :campagne
      row :gamemaster
      row :game
      row :game_styles do |g|
        links = g.game_styles.map { |gs| link_to gs.title, admin_game_style_path(gs) }
        raw(links.join ", ")
      end
      row :members do |g|
        names = g.profiles.map { |p| link_to p.full_name, admin_profile_path(p) }
        raw(names.join(", "))
      end
    end
  end

  form html: { enctype: "multipart/form-data"} do |f|
    f.inputs "Details" do
      f.input :title
      f.input :description
      f.input :campagne
      f.input :game
      f.input :gamemaster
      f.input :game_styles, as: :check_boxes
      f.input :profiles, as: :check_boxes
    end
    f.inputs "Bild" do
      f.input :image
    end
    f.buttons
  end

  controller do
    def permitted_params
      params.permit!
    end
  end
end
