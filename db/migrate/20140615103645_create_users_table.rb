class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |u|
			u.string :username
			u.string :email
			u.string :password_hash
			u.boolean :admin, default: false

			u.timestamps
  	end
  end
end


