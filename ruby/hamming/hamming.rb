# frozen_string_literal: true

module Hamming
  def self.compute(strand1, strand2)
    unless strand1.length == strand2.length
      raise ArgumentError, 'Strands must be of equal length'
    end

    return 0 if strand1.empty?

    arr1 = strand1.split('')
    arr2 = strand2.split('')

    strand_comparison = arr1.zip(arr2).map { |a, b| a == b }
    hamming_distance = strand_comparison.tally[false]

    hamming_distance || 0
  end
end
