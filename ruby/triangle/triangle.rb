# frozen_string_literal: true

class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  # all sides are equal lengths
  def equilateral?
    triangle? && @sides.uniq.count == 1
  end

  # at least two sides the same length
  def isosceles?
    triangle? && @sides.uniq.count <= 2
  end

  # all sides are different lengths
  def scalene?
    triangle? && @sides.uniq.count == 3
  end

  private

  def triangle?
    # all sides must be length > 0 and
    # the sum of 2 sides must be greater than or equal to 3rd side
    @sides.all? { |side| side.positive? && (@sides.sum - side) >= side }
  end
end
