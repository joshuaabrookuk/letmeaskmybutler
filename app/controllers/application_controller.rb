# frozen_string_literal: true

require 'sinatra/base'
require './app/lib/param_converter'

# This is my controller
class LetMeAskMyButler < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @converting = ParamConverter::MyParamConverter.new
    @search = params[:search]

    if @search
      @search_query = @converting.cgi_converter(@search)
      @search_link = @converting.url_converter(@search_query)
    end
    erb :index_merge
  end

  get '/redirect' do
    @converting = ParamConverter::MyParamConverter.new
    @search = params[:search]
    @search_query = @converting.cgi_converter(@search)
    redirect to("https://uk.ask.com/web?q=#{@search_query}")
    erb :redirect
  end

  get '/search' do
    @search_query = params[:search_query]
    erb :search_animation
  end

  run! if app_file == $PROGRAM_NAME
end
