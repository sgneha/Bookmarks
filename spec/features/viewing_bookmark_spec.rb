# frozen_string_literal: true

feature 'View Bookmarks' do
  scenario 'view the list' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end
