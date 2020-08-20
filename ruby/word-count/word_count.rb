# frozen_string_literal: true

class Phrase
  # regex for capturing words and apostrophes used in contractions or a number
  REGEX = /\b\w+'?\w|\d+\b/.freeze

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @phrase.downcase.scan(REGEX).tally
  end
end
