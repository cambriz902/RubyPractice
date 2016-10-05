require_relative '../integer.rb'
require 'test/unit'

class PrimeTests < Test::Unit::TestCase

  def test_is_prime?
    assert_equal(true, 11.is_prime?)
    assert_equal(false, 4.is_prime?)
  end

end