require_relative '../multiplication_table.rb'
require 'test/unit'

class MultiplicationTableTests < Test::Unit::TestCase

  def test_initialize
    assert_raise_message('Multiplication table type invalid') do
      MultiplicationTable.new('odd_numbers', 5)
    end

    assert_nothing_raised do
      MultiplicationTable.new('prime', 5)
    end
  end

  def test_create_table
    table = MultiplicationTable.new('prime', 2)
    expected_table = [
      [" ", 2, 3], 
      [2, 4, 6], 
      [3, 6, 9]
    ]
    assert_equal(expected_table, table.multiplication_table)
  end

end
