# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark'
class Bookmark_manager < Sinatra::Base
  get '/bookmarks' do
    erb :bookmarks
  end

  run! if app_file == $PROGRAM_NAME
end
