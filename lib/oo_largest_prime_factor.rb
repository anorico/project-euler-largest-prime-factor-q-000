# Enter your object-oriented solution here!
require 'prime' 

class LargestPrimeFactor

  def initialize(prime_number)

    @array = Array.new
    best_number = prime_number 
    prime_left = prime_number

    i=1

    while i <= best_number

      p "original: #{prime_number} | current: #{best_number} | LPF testing: #{i} | @array: #{@array}"

      if best_number % i == 0 && Prime.prime?(i) == true
        @array << i
        best_number = best_number/@array[-1]
      end

      i += 2
    end
    return @array
  end

  def number
    return @array.max
  end

end

