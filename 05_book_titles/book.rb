# frozen_string_literal: true

LITTLE_WORDS = %w[a an the and but or for nor over under around on in of].freeze
def titleize(msg)
  words = msg.split(' ').map do |word|
    LITTLE_WORDS.include?(word.downcase) ? word : word.capitalize
  end
  words[0] = words[0].capitalize
  words.join(' ')
end

# Book represents a book
class Book
  attr_reader :title

  def title=(title)
    @title = titleize(title)
  end
end
