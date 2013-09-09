class CreateGameStyles < ActiveRecord::Migration
  def change
    create_table :game_styles do |t|
      t.string :title

      t.timestamps
    end
  end
end
