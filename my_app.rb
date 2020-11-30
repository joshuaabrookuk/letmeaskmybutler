require 'sinatra/base'

class LetMeAskMyButler < Sinatra::Base

  get '/' do
    @search = params[:search]
    erb :index
  end

  run! if app_file == $0
end
