helpers do
  def em(text)
    "<em>#{text}</em>"
  end

  def all_issues
  	@issues = Issue.all.order(:id)
  end

  def active_issues
		@active_issues = Issue.where(active: true)
  end


	def reset
		# session.clear === no good... 
		session[:update],
		session[:list],
		session[:create], 
		session[:close],
		session[:update_id],
		session[:list_view],
		session[:confirm_close] = false
	end

	def find_issue(id)
		@issue = Issue.find(id)
	end

end
