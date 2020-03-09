# frozen_string_literal: true

require 'bookmark'
describe Bookmark do
  subject(:book) { described_class.new(4, [2]) }
  it 'returns text' do
    expect(book.text).to eq 4
  end
  it 'returns list of bookmarks' do
    # book.list = [2]
    expect(book.all).to eq [2]
  end
end
