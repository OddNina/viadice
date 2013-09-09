class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :profile
      t.belongs_to :group
    end
  end
end
