require_relative 'integer.rb'

# class that handles methods related to prime numbers
class Prime

  # returns a list of prime numbers of size = size
  def self.list(size)
    return [] if size < 1
    return [2] if size == 1
    primes = [2]
    currentNumber = 3
    while(primes.length < size)
      primes << currentNumber if currentNumber.is_prime?
      currentNumber += 2
    end
    primes
  end

end
