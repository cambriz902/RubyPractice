require_relative 'multiplication_table.rb'

class FundingCircleChallenge

  # print multiplication for n(10) prime numbers
  def initialize(type, size)
    table = MultiplicationTable.new(type, size.to_i)
    table.print_table
  end 
end

# takes type of Multiplication table and the size of the table
FundingCircleChallenge.new(ARGV[0], ARGV[1])