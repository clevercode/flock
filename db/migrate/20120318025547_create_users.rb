class CreateUsers < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :first_name, null: false, default: ''
      t.string :last_name,  null: false, default: ''
      t.string :initials, null: false, default: ''

      ## Database Authenticatable
      t.string :email,      null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
    end
  end

end
