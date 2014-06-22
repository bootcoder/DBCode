class CreateCommentsTable < ActiveRecord::Migration
  def change
  	create_table :comments do |c|
			c.string :com_content
			c.integer :com_vote
			c.integer :com_belongs_to_user
			c.integer :com_belongs_to_issue
			c.timestamps
  	end
  end
end
