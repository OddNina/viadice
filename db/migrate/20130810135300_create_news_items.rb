class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :headline
      t.text :content

      t.timestamps
    end
  end
end
