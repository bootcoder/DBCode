class IssuesTable < ActiveRecord::Migration
  def change
  	create_table :issues do |i|
  		i.string :issue_title
  		i.string :issue_language
  		i.integer :priority
  		i.string :gist
  		i.boolean :active
  		i.timestamps
  	end
  end
end
