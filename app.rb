require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end
  post '/names' do
    name1 = Player.new(params[:Name1])
    name2 = Player.new(params[:Name2])
    $game = Game.new(name1, name2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
