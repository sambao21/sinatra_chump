require 'sinatra'

set :haml, :format => :html5

get '/' do
  if params[:oauth_key] and params[:oauth_secret]
    @oauth_header = "#{params[:oauth_key]}::#{params[:oauth_secret]}"
  end
  haml :index
end
