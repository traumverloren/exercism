=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(name)
    # Scan the name to find first letter and join to form acronym
    name.scan(/\b[a-z]/i).join.upcase
  end
end
