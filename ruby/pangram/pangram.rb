# frozen_string_literal: true

module Pangram
  def self.pangram?(sentence)
    # Lowercase the sentence & put all the unique letters array and count them
    unique_letters =
      sentence.downcase.each_char.select { |letter| letter =~ /[a-z]/ }.uniq

    unique_letters.length == 26
  end
end
