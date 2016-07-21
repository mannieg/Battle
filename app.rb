require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end
  post '/names' do
    # $player1 = Player.new(params[:Name1])
    # $player2 = Player.new(params[:Name2])
    name1 = Player.new(params[:Name1])
    name2 = Player.new(params[:Name2])
    $game = Game.new(name1, name2)
    redirect '/play'
  end

  get '/play' do
    # @name1 = $player1
    # @name2 = $player2
    @game = $game
    erb(:play)
  end

  get '/attack' do
#     @name1 = $player1
#     @name2 = $player2
#     @name1.attack(@name2)
#     Game.new.attack(@name2)
    @game = $game
    @game.attack(@game.name2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
