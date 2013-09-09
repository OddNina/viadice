class AddGameToGroup < ActiveRecord::Migration
  def change
    change_table :groups do |t|
      t.belongs_to :game
    end
  end
end
