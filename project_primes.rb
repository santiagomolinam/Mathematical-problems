require './primality'
# All problems about prime in https://projecteuler.net
class ProjectPrimes
  # -------------------Problem 3---------------------------------
  # The prime factors of 13195 are 5, 7, 13 and 29.
  # => What is the largest prime factor of the number 600851475143 ?
  def self.problem_03
    puts 'The prime factors of 13195 are 5, 7, 13 and 29.'
    puts 'What is the largest prime factor of the number 600851475143 ?'
    n = gets.chomp.to_i
    puts ' '
    (2..Math.sqrt(n).to_i).each { |i| puts i if Primality.prime_01(i) && n % i == 0 }
  end

  # -------------------Problem 7---------------------------------
  # By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
  # we can see that the 6th prime is 13.
  # => What is the 10 001st prime number?
  def self.problem_07
    puts 'By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we
          can see that the 6th prime is 13.'
    puts 'What is the nst prime number? (Ex: 10001st)'
    n = gets.chomp.to_i
    cont = 2
    i = 1
    while i <= n
      if Primality.prime_01(cont)
        puts "#{i} = #{cont}"
        cont += 1
        i += 1
      else
        cont += 1
      end
    end
  end

  # -------------------Problem 10---------------------------------
  # The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
  # Find the sum of all the primes below two million.
  def self.problem_10
    puts 'The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.'
    puts 'Find the sum of all the primes below two million.'
    n = gets.chomp.to_i
    sum = 0
    (2..n).each do |i|
      if Primality.prime_01(i)
        sum += i
        puts i.to_s
      end
    end
    puts "#{sum} Sumatory of prime numbers below #{n}."
  end
end
