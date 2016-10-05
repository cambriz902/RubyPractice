require_relative '../prime.rb'
require 'test/unit'

class PrimeTests < Test::Unit::TestCase

  def test_list
    assert_equal([2,3], Prime.list(2))
    assert_equal([2,3,5], Prime.list(3))
  end

end