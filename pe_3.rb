# Find the largest Prime Factor of a given number

# what is a prime factor ?

# The prime factors of 13195 are 5, 7, 13 and 29.
# Rules for prime factor ?

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

largest_prime_factor(600851475143)
# largest_prime_factor(13195)
# largest_prime_factor(144)

# can I not use for on range from high to low ?!
# Ranges dont work from high to low ?!

# How can we use for loops in ruby ?

# Every program has entry condition, exit condition, iteration
# Brute Force Methods ?

# How to find if a number is prime number ? Slow methods(brute-force or trial & error methods. Faster Algorithms - Here is where algorithms come into place.)

# Use flags