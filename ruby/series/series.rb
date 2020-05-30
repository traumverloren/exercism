# frozen_string_literal: true

# Write your code for the 'Series' exercise in this file. Make the tests in
# `series_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/series` directory.

class Series
  def initialize(digits)
    @digits = digits.chars
  end

  def slices(size)
    raise ArgumentError if @digits.length < size

    @digits.each_cons(size).map(&:join)
  end
end
