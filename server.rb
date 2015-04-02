require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
    erb :homepage
  end

  get '/registration' do
    erb :registration
  end

  post '/game_page' do
    @name = params[:name]
    erb :game_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
