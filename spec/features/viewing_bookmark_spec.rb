# frozen_string_literal: true

feature 'Viewing the home page' do
  scenario 'the page title is visible' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end
feature 'View Bookmarks' do
  scenario 'bookmarks are visible' do
    visit('/bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
