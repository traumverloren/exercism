=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

class Pangram
  def self.pangram?(sentence)
    # Lowercase the sentence & put all the unique letters array and count them
    unique_letters =
      sentence.downcase.split('').select { |letter| letter =~ /[a-z]/ }.uniq

    unique_letters.length == 26
  end
end
