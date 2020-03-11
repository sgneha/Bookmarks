# frozen_string_literal: true

feature 'Viewing the home page' do
  scenario 'the page title is visible' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end
feature 'View Bookmarks' do
  scenario 'bookmarks are visible' do
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec('TRUNCATE bookmarks;')

    # add the test data

    # connection.exec("INSERT INTO bookmarks VALUES(1,'http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")
    Bookmark.create(url: 'http://www.makersacademy.com')
    Bookmark.create(url: 'http://www.destroyallsoftware.com')
    Bookmark.create(url: 'http://www.google.com')

    visit('/bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
