class User < ActiveRecord::Base
	has_many :issues
	has_many :issues, through: :user_issues
end
