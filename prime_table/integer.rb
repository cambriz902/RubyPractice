class Integer < Numeric

  # returns true if Integer is prime
  def is_prime?
    return false if self < 2
    2.upto(Math.sqrt(self).to_i) do |num|
      return false if self % num == 0
    end
    true
  end

end
