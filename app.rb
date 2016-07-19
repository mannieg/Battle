require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

enable :sessions

get '/play' do
  @player_1 = session[:player_1]
  @player_2 = session[:player_2]
  erb(:play)
end

post '/names' do
  session[:player_1] = params[:player_1]
  session[:player_2] = params[:player_2]
  redirect '/play'
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
