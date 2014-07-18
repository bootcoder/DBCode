class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :issues
  # Remember to create a migration!
end
