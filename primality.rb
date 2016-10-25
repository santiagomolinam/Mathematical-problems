#:nodoc:
module Primality
  # A simple way to know if a given number is prime.
  # It works, asking if how many number divide the given number.
  def self.prime_01(num)
    count = 0
    (1..num).each do |i|
      count += 1 if num % i == 0
    end
    return false if count > 2
    return true if count == 0
  end

  # n is prime if and only if it id not divisible by any prime not exceeding
  # sqrt(n)
  # num has to be more than 1.
  def self.prime(num)
    if num == 0 || num == 1
      false
    else
      count = 0
      (2..Math.sqrt(num).to_i).each do |i|
        count = 0
        count += 1 if num % i == 0
        break if count > 0
      end
      return false if count > 0
      return true if count == 0
    end
  end
end
