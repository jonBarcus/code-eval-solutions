require 'prime'

def sum_of_primes(number)
  @prime_array = []
  @number = number
  i = 1

  while @prime_array.length < @number
    if i.prime?
      @prime_array << i
    end
    i += 1
  end

  @sum = @prime_array.inject{|sum,x| sum + x }

  puts @sum


end

sum_of_primes(1000)
