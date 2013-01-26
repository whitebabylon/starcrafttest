class FixUsersTable < ActiveRecord::Migration
  def up
    drop_table :users
    drop_table :starusers
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token

      t.timestamps
    end
  end
  
  def down
    create_table :starusers do |t|
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token

      t.timestamps
    end
  end

end
