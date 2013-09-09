class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title

      t.text :description
      t.text :campagne
      
      t.belongs_to :gamemaster, class_name: "Profile"

      t.timestamps 
    end

    add_index :groups, :title
  end
end
