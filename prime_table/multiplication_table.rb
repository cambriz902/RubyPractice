require_relative 'prime.rb'

class MultiplicationTable

  def initialize(type, size)
    # Decided to make a case statement incase we wanted to print a different
    # type of multiplication table. EX: normal, odds, evens
    case type
    when 'prime'
      @numbers_to_multiply = Prime.list(size)
      @multiplication_table = []
    else
      # raises and error if an incorrect table type is passed
      raise ArgumentError, 'Multiplication table type invalid'
    end
    create_table
  end

  # create 2D array containing multipication table values
  def create_table
    dimension_length = (@numbers_to_multiply.length - 1)
    @multiplication_table = []
    new_table_row = [" "]

    for i in 0..dimension_length
      new_table_row << @numbers_to_multiply[i]
    end

    new_table_row
    @multiplication_table << new_table_row

    for x in 0..dimension_length 
      new_table_row = []
      new_table_row << @numbers_to_multiply[x]
      # rowValues = "#{@numbers_to_multiply[x]} |"
      for y in 0..dimension_length
        nextEntry = @numbers_to_multiply[x] * @numbers_to_multiply[y]
        new_table_row << nextEntry
      end
      @multiplication_table << new_table_row
    end
  end

  # prints the 2D array
  def print_table
    dimension_length = (@numbers_to_multiply.length)
    topColumn = ""
    for i in 0..dimension_length
      topColumn += " #{@multiplication_table[0][i]} |"
    end
    for x in 0..dimension_length 
      rowValues = ""
      for y in 0..dimension_length
        nextEntry = @multiplication_table[x][y]
        rowValues << " #{nextEntry} |"
      end
      puts rowValues
    end
  end
end
