
#********************
		# GET ROUTES
#********************

get '/issues/new' do
	reset
	session[:create] = true
	redirect '/'
end

get '/issues' do
	reset 
	session[:list] = true
end

get '/issues/list' do
	reset
	session[:list_view] = true
	redirect '/'
end


get '/reset' do
 	reset
 	session[:list] = true
	redirect '/'
end

get '/issues/update' do
	reset
	session[:update] = true
	session[:list] = false
	redirect '/'
end

get '/issues/update_issue_id' do
	reset
	session[:issue_id] = params[:issue_id]
	session[:update_id] = true
	session[:list] = false
	redirect '/'
end

get '/issues/close' do
	reset
	session[:close] = true
	redirect '/'
end



#********************
		#POST ROUTES
#********************

post '/issues/update' do
	reset
	session[:update_id] = true
	session[:update] = false
	session[:list] = false
	redirect '/'
end

post '/issues/new' do
	reset
	Issue.create(issue_title: params[:issue_title],
							 issue_language: params[:issue_language], 
							 priority: params[:priority], 
							 gist: params[:gist],
							 active: true)
	# if Issue.save
		session[:list] = true
		redirect "/"
	# else
		# session[:create] = true
		# @error = @new_issue.errors.messages
	# end
end


#really a put route but........

post '/issues/update_id' do
	reset
	session[:list] = true
	p "update session info"
	p session[:issue_id]
	p params
	update = Issue.find_by_id(session[:issue_id])
	update.update(issue_title: params[:issue_title],
							 issue_language: params[:issue_language], 
							 priority: params[:priority], 
							 gist: params[:gist])
	redirect '/'
end

post '/issues/close' do
	session[:close] = false	
	session[:close_sid] = params[:close_id]
	session[:confirm_close] = true
	redirect '/'
end

post '/issues/:id' do
	reset
	if params[:id] == session[:close_sid]
		close = Issue.find_by_id(params[:id])
		close.update(active: false)
		session[:close] = false
		session[:list] = true
		redirect '/'
	else
		session[:close] = true
		redirect '/'
	end
end



#********************
	# DELETE ROUTES
#********************

delete '/issues/:id' do
	reset
	if params[:id] == session[:close_sid]
		close = Issue.find_by_id(params[:id])
		close.update(active: false)
		session[:close] = false
		session[:list] = true
		redirect '/'
	else
		session[:close] = true
		redirect '/'
	end
end


