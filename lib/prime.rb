class Prime
  attr_accessor :m, :n
  
  def initialize(n=10)
    @n = n
    @m = ((n-1)/2).ceil
  end

  def calc_table
    primes = [2,3]
    i= 4
    primery = true
    while primes.size < @n
      (2..Math.sqrt(i).ceil).each do |num|
        primery = true
        if i % num == 0
          primery = false
          break
        end
      end
      primes << i if primery
      i+=1
    end
    puts ' '* @m + "Prime numbers multiplication table"
    puts ' '* @m +  "=" * 34
    primes.each_with_index do |x, ix|
      primes.each_with_index do |y, iy|
        if iy == 0
          printf("%#{@m}d", x)  
        elsif ix == 0
          printf("%#{@m}d", y)
        else  
          printf("%#{@m}d", x * y)
        end
      end
      puts ""
    end
  end
end