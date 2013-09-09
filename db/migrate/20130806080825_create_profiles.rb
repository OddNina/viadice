class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :plz
      t.integer :age
      t.string :address
      t.text :bio

      t.belongs_to :user

      t.timestamps
    end
  end
end
