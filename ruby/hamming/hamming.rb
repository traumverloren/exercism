# frozen_string_literal: true

module Hamming
  def self.compute(strand1, strand2)
    unless strand1.length == strand2.length
      raise ArgumentError, 'Strands must be of equal length'
    end

    return 0 if strand1.empty?

    arr1 = strand1.split('')
    arr2 = strand2.split('')

    hamming_distance = arr1.zip(arr2).reject { |a, b| a == b }.count

    hamming_distance || 0
  end
end
