class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :team_id, null: false
      t.integer :user_id, null: false
      t.boolean :admin, default: false
    end
  end
end
