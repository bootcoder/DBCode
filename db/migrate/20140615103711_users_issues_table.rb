class UsersIssuesTable < ActiveRecord::Migration
  def change
  	create_table :user_issues do |i|
  		i.integer :user_id
  		i.integer :issue_id
  		i.string  :cohort_id

  		i.timestamps
  	end
  end
end
