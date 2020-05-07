=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
  REFERENCE_COLORS = %w[
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  ]

  def self.value(color_array)
    # Only want to return a double digit value, so we only check first 2 array elements.
    color_numbers =
      color_array[0..1].map { |color| REFERENCE_COLORS.index(color) }

    color_numbers.join.to_i
  end
end
