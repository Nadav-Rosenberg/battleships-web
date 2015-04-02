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
    p params
    @name = params[:name]
    if @name == ""
      @error = "name"
      erb :error
    else
      erb :game_page
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
