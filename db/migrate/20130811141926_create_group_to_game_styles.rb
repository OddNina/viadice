class CreateGroupToGameStyles < ActiveRecord::Migration
  def change
    create_table :group_to_game_styles do |t|
      t.belongs_to :group
      t.belongs_to :game_style
      t.timestamps
    end
    add_index :group_to_game_styles, [:group_id, :game_style_id]
  end
end
