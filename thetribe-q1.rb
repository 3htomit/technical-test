def isPrime(n)
  result = 1
  (2...n).each { |x|
      if n % x == 0
          result = x.dup
          break
      end
  }
  puts result
end


# TEST

n_a = 2
puts "Number A:"
isPrime(n_a)
# Output: 1

n_b = 4
puts "Number B:"
isPrime(n_b)
# Output: 2

n_c = 91
puts "Number C:"
isPrime(n_c)
# Output: ?
