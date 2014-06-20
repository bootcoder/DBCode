# require 'rack-flash'
# require 'chronic'

# use Rack::Flash
enable :sessions


get '/' do
	reset
  erb :index
end
