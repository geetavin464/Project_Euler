# PE#3
# Find the largest Prime Factor of a given number
# The prime factors of 13195 are 5, 7, 13 and 29.

# Using the square root rule to check for primality.

require 'mathn'

def largest_prime_factor(num)
   largest_prime = num
   n = num
   while(n > 0)
       # check if n is a factor of num
      if(num%n == 0)
          
          flag_prime = false
          # check for primality of n
          n_limit = Math.sqrt(n)
          for i in 2..n_limit
             break if(n%i == 0)
             flag_prime = true if( (i==n_limit or i==n_limit.ceil-1) and n%i != 0 ) 
          end
          largest_prime = n if(flag_prime)
          
      end
      n = n - 1
      
      # Break on 1st encounter of a prime 
      break if(largest_prime < num)
   end
   largest_prime
end

largest_prime_factor(600851475143)   # Very Slow. Optimize It.
# largest_prime_factor(13195)
# largest_prime_factor(144)

# Ruby Ranges do not work from high to low 
# How can we use for loops in ruby ?

# Entry Condition, Exit Condition, Increment, Break, Flag