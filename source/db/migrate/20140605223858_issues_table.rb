class IssuesTable < ActiveRecord::Migration
  def change
  	create_table :issues do |i|
      i.boolean  :issue_active, default: true
      i.string   :issue_challenge
      i.string   :issue_content
      i.string   :issue_gist
      i.string   :issue_language
      i.string   :issue_location
      i.integer  :issue_priority, default: 5
      i.string   :issue_title
      i.integer  :issue_belongs_to
      
  		i.timestamps
  	end
  end
end
