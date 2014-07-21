# require 'rack-flash'
# require 'chronic'

# use Rack::Flash
enable :sessions


get '/' do
	current_user
  erb :index
end
