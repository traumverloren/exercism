# frozen_string_literal: true

# Write your code for the 'Word Count' exercise in this file. Make the tests in
# `word_count_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/word-count` directory.

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    # regex for capturing words and apostrophes used in contractions or a number
    regex = /\b\w+'?\w|\d+\b/
    @phrase.downcase.scan(regex).tally
  end
end
