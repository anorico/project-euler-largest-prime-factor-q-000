# Enter your procedural solution here!
require 'prime' 

def largest_prime_factor(prime_number)
  i = 1
  array = []
  best_number = prime_number
  prime_left = prime_number

  while i <= best_number
    p "original: #{prime_number} | current: #{best_number} | LPF testing: #{i} | array: #{array}"
   if best_number % i == 0 && Prime.prime?(i) == true
      array << i
      best_number = best_number/array[-1]
   end
   i += 2
  end
  return array.max 
end

