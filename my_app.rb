# frozen_string_literal: true

require 'sinatra/base'

# This is my controller
class LetMeAskMyButler < Sinatra::Base
  get '/' do
    @search = params[:search]

    if @search
      search_query = CGI.escape(@search)
      @search_link = "http://localhost:4567/search?search_query=#{search_query}"
    end

    erb :index
  end

  get '/search' do
    erb :search
    # @search_query = params[:search_query]

  end

  run! if app_file == $PROGRAM_NAME
end
