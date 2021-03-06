require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player.rb'

class Battle < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  
  get '/' do
    erb(:index) 
  end 

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect 'play'
  end
  
  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end 

  get '/attack' do
# How it was first
#    @player_1_name = $player_1.name
#    @player_2_name = $player_2.name
# How it became second
    @player_1 = $player_1
    @player_2 = $player_2
# Changing below for third
#    @player_1.attack(@player_2)
    Game.new.attack(@player_2)
    erb(:attack)
  end
  
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
