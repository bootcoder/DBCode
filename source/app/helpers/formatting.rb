helpers do

	def current_user
    if session[:id]
      @current_user ||= User.find_by_id(session[:id])
    end
	end

	def find_user_by_id(id)
		@found_user = User.find_by_id(id)
	end

  def em(text)
    "<em>#{text}</em>"
  end

  def all_issues
  	@issues = Issue.all.order(:id)
  end

  def active_issues
		@active_issues = Issue.where(issue_active: true)
  end

  def find_issue_by_id(id)
		@found_issue = Issue.find_by_id(id)
  end

  def find_comments_by_issue_id(id)
		@found_comments = Comment.where(com_belongs_to_issue: id)
  end


	def reset
		
		session[:list] = false
	
		# session.clear === no good...
		session[:display_center],
		session[:close],
		session[:confirm_close],
		session[:create], 
		session[:display_issue],
		session[:list_view],
		session[:show_id],
		session[:update],
		session[:update_id],
		session[:update_issue_id] = false
	end

	def find_issue(id)
		@issue = Issue.find(id)
	end

	def dbc_ers
		@dbc = DBC::User.all(per_page: 10, page: 2)
	end

end
