# Somes exercises about mathematical problems
class Math01
  require 'benchmark'
  # Find the sum of all the multiples of 3 or 5 below 1000
  def self.exer_01
    puts 'If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.'
    puts 'Find the sum of all the multiples of 3 or 5 below n. (Ex. n=1000).'
    n = gets.chomp.to_i
    acum = 0
    (3..n - 1).each { |i| acum += i if i % 3 == 0 || i % 5 == 0 }
    acum
  end
  # Another way to make the cycle.
  # (3..n - 1).each do |i|
  #  acum += i if i % 3 == 0 || i % 5 == 0
  # end

  def self.foo
    acum = 0
    time = Benchmark.measure {
      (1..10_000).each do |i|
        acum += i
      end
    }
    puts "Sumatoria #{acum}"
    puts time.real
  end
end
