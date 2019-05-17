require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base 
enable :sessions

    get '/' do 
        erb (:index)
    end

    post '/names' do
        player1 = Player.new(params[:player_1_name])
        player2 = Player.new(params[:player_2_name])
        $game = Game.new(player1, player2)
        redirect '/play'
    end 

    get '/play' do
      @game = $game
      erb :play
    end

    post '/player_1_attack' do
        @game = $game 
        @game.attack(@game.player_2)
        erb :attack
    end 

    post '/player_2_attack' do 
        @game = $game 
        @game.attack(@game.player_1)
        erb :attack
    end 
end 
