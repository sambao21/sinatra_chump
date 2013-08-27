require 'sinatra'

set :haml, :format => :html5

get '/' do
  if params[:oauth_key] and params[:oauth_secret]
    @oauth_header = 'aasdflkjasfdjlaksjdflj'
  end
  haml :index
end
