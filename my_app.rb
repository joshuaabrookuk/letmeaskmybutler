# frozen_string_literal: true

require 'sinatra/base'

# This is my controller
class LetMeAskMyButler < Sinatra::Base
  get '/' do
    @search = params[:search]

    if @search
      search_query = @search.tr(' ', '+')
      @search_link = "http://localhost:4567/web?q=#{search_query}"
    end

    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
