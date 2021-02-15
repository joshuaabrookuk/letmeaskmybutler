# frozen_string_literal: true

require 'sinatra/base'

# require './app/models/param_converter.rb'
# converting = ParamConverter::MyParamConverter.new
# converting.converter('Cool')


# This is my controller
class LetMeAskMyButler < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @search = params[:search]

    if @search
      @search_query = CGI.escape(@search)
      @search_link = "http://localhost:4567/search?search_query=#{@search_query}"
    end
    erb :index_merge
  end

  get '/redirect' do
    @search = params[:search]
    @search_query = CGI.escape(@search)
    redirect to("https://uk.ask.com/web?q=#{@search_query}")
    erb :redirect
  end

  get '/search' do
    @search_query = params[:search_query]
    erb :search
  end

  run! if app_file == $PROGRAM_NAME
end
