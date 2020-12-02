# frozen_string_literal: true

require 'sinatra/base'

# This is my controller
class LetMeAskMyButler < Sinatra::Base
  get '/' do
    @search = params[:search]

    if @search
      require 'uri'
      search_query = URI.encode(@search)
      @search_link = "http://localhost:4567/search?search_query=#{search_query}"
    end

    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
