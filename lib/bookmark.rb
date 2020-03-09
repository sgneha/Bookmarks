# frozen_string_literal: true

class Bookmark
  attr_reader :text, :list
  def initialize(text, list)
    @text = text
    @list = list
  end

  def all
    @list
  end
end
