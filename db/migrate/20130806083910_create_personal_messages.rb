class CreatePersonalMessages < ActiveRecord::Migration
  def change
    create_table :personal_messages do |t|
      t.text :content
      t.string :subject

      t.timestamps
    end
  end
end
