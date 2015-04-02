require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
    erb :homepage
  end

  get '/registration' do
    @name = params[:name]
    erb :registration
  end

  post '/game_page' do
    @errors = []
    @name = params[:name]
    @board_size = params[:board_size]
    @number_of_ships = params[:number_of_ships]
    @errors << "There is no name" if @name.empty?
    @errors << "Board size is missing" if @board_size.empty?
    @errors << "Number of ships is missing" if @number_of_ships.empty?
    return erb :registration if !@errors.empty? 
      erb :game_page
  end

  run! if app_file == $0
end
