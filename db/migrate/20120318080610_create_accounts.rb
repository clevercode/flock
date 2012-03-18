class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :username, null: false
      t.string :access_token
      t.integer :team_id
    end
  end
end
