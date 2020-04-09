# frozen_string_literal: true

VOWELS = %w[a e i o u].freeze
def translate_word(word) # rubocop:disable Metrics/AbcSize
  nw = word.downcase
  first_vowel_idx = nw.index(/[aeiou]/)
  nw = if VOWELS.include?(nw[0])
         nw + 'ay'
       elsif nw[first_vowel_idx - 1..first_vowel_idx] == 'qu'
         nw[first_vowel_idx + 1..-1] + nw[0..first_vowel_idx] + 'ay'
       else
         nw[first_vowel_idx..-1] + nw[0..first_vowel_idx - 1] + 'ay'
       end
  word.start_with?(/[[:upper:]]/) ? nw.capitalize : nw
end

def translate(sentence)
  # the regex divides the words by punctuation for later rejoining
  sentence.scan(/[[:alnum:]]+|[^[:alnum:]]+/).map do |w|
    w.match(/[[:alnum:]]+/) ? translate_word(w) : w
  end.join('')
end
