ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative 'models/link'
require_relative 'models/tag'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    @links = Link.create(url: params[:url], title: params[:title], tag: params[:tag])
    redirect to('/links')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
