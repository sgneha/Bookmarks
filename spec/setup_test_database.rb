# frozen_string_literal: true

require 'pg'
p 'setting up test database..'
def setup_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')

  # clear the bookmark table
  connection.exec('TRUNCATE bookmarks;')
end
