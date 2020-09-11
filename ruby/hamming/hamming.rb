# frozen_string_literal: true

module Hamming
  def self.compute(strand1, strand2)
    unless strand1.length == strand2.length
      raise ArgumentError, 'Strands must be of equal length'
    end

    strand1.each_char.zip(strand2.each_char).count { |a, b| a != b }
  end
end
