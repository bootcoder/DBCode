require 'bcrypt'

class User < ActiveRecord::Base
	has_many :comments
	has_many :comments, through: :user_issues
	has_many :issues
	has_many :issues, through: :user_issues

  # users.password_hash in the database is a :string
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
