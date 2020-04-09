# frozen_string_literal: true

def echo(msg)
  msg
end

def shout(msg)
  msg.upcase
end

def repeat(msg, n_times = 2)
  ((msg + ' ') * n_times).chop
end

def start_of_word(word, n_chars)
  word[0, n_chars]
end

def first_word(msg)
  msg.split(/\W/)[0]
end

LITTLE_WORDS = %w[a an the and but or for nor over under around on].freeze
def titleize(msg)
  words = msg.split(' ').map do |word|
    LITTLE_WORDS.include?(word.downcase) ? word : word.capitalize
  end
  words[0] = words[0].capitalize
  words.join(' ')
end
