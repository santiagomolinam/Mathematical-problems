#:nodoc:
module Various
  # 123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789
  def self.longitud(num)
    cont = 1
    while 0 <= num
      break if (num / 10) == 0
      cont += 1
      num /= 10
    end
    cont
  end

  # COntar los divisores de un numero.
  def self.numdivisores(num)
    cont = 1
    (1..num / 2).each do |i|
      cont += 1 if num % i == 0
    end
    cont
  end

  def self.fact(n)
    if n == 0
      1
    else
      n * fact(n - 1)
    end
  end


  # List if the firt n Triangular numbers.
  def self.triangularnumbers(n)
    vec = []
    (1..n).each do |i|
      num = 0
      (1..i).each do |j|
        num += j
      end
      vec << num
    end
    vec
  end
end
