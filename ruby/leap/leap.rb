# frozen_string_literal: true

module Year
  def self.leap?(year)
    # every year that is evenly divisible by 4 & NOT by 100
    # EXCEPT when it is evenly divisible by 400
    year.modulo(4).zero? && !year.modulo(100).zero? || year.modulo(400).zero?
  end
end
