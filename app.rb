# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark'
class Bookmark_manager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $PROGRAM_NAME
end
