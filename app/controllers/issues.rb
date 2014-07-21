require 'awesome_print'
#********************
		# GET ROUTES
#********************


get '/reset' do
 	reset
	redirect '/'
end

get '/issues' do
	erb :issues_view_current
end

get '/issues/display' do
	@d_id = params[:id]
	erb :issues_single_view
end

get '/issues/create' do
	erb :issues_create
end

get '/issues/list' do
	erb :issues_all_view_summary
end

get '/issues/update' do
	p "issue id"
	p session[:issue_id]
	erb :issues_update
end

get '/issues/update/select' do
	erb :issues_update_select
end

get '/issues/close' do
	erb :issues_close_confirm
end

get '/issues/close/select' do
	erb :issues_close_select
end




#********************
		#POST ROUTES
#********************


post '/issues/create' do
	current_user
	Issue.create(issue_title: params[:issue_title],
							 issue_language: params[:issue_language], 
							 issue_priority: params[:issue_priority], 
							 issue_gist: params[:issue_gist],
							 issue_location: params[:issue_location],
							 issue_content: params[:issue_content],
							 issue_challenge: params[:issue_challenge],
							 issue_belongs_to: @current_user.id,
							 issue_active: true)

		redirect "/"
end


post '/issues/update/select' do
	p "update post select"
	redirect '/issues/update'
end

#really a put route but........
post '/issues/update' do
	p "update post"
	session[:update_button] = false
	current_user
	update = Issue.find_by_id(session[:issue_id])
	update.update(issue_title: params[:issue_title],
							 issue_language: params[:issue_language], 
							 issue_priority: params[:issue_priority], 
							 issue_gist: params[:issue_gist],
							 issue_challenge: params[:issue_challenge],
							 issue_content: params[:issue_content],
							 issue_location: params[:issue_location])
	redirect '/'
end

post '/issues/close/select' do
	session[:close_sid] = params[:close_id]
	redirect '/issues/close'
end

post '/issues/close' do
	if params[:id] == session[:close_sid]
		close = Issue.find_by_id(params[:id])
		close.update(issue_active: false)
		redirect '/'
	else
		redirect '/issues/close'
	end
end

post '/comments/create' do
	current_user
	Comment.create(com_content: params[:com_content],
								 com_belongs_to_user: @current_user.id,
								 com_belongs_to_issue: session[:display_id]
								 )
	redirect '/issues/display'
end




#********************
	# DELETE ROUTES
#********************

delete '/issues/close/:id' do
	p "inside close route"
	p params
	p session
	if params[:id].to_i == session[:close_sid]
		close = Issue.find_by_id(params[:id])
		close.update(issue_active: false)
		redirect '/'
	else
		redirect '/issues'
	end
end

# delete '/issues/delete/:id' do
# 	if params[:id] == session[:close_sid]
# 		close = Issue.find_by_id(params[:id])
# 		close.destroy
# 		redirect '/'
# 	else
# 		redirect '/issues/delete'
# 	end
# end

#********************
# User Routes
#********************


#----------- SESSIONS -----------



post '/sessions/create' do
	p "params"
	p params
  # you don't need to use instance variables if your route is redirecting.
  # Redirecting will disregard instance variables regardless.
  user = User.find_by_email(params[:email])
	p "user"
  p user
  if user.password == params[:password]
    session[:id] = user.id
  end

  # since both branches redirected, you can pull the redirect out.
  redirect '/'
end

delete '/sessions' do
  session[:id] = nil
  redirect '/'
end

#----------- USERS -----------

get '/users/new' do
  erb :sign_up
end

post '/users' do
	@user = User.new(username: params[:user][:name], email: params[:user][:email])
	@user.password = params[:user][:password]
	@user.save
	session[:id] = @user.id
	redirect '/'
end



