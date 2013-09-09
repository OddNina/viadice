class AddGroupToNewsItem < ActiveRecord::Migration
  def change
    change_table(:news_items) do |t|
      t.belongs_to :group
    end
  end
end
