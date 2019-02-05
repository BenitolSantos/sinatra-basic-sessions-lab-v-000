require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
    #a session is a hash that stores datas
    #and passes data to that client as a cookie
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]
    #setting item from the form with a item key in the session hash
    @session = session
    @item = item
  end
end
