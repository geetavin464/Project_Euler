# PE#3
# Find the largest Prime Factor of a given number
# The prime factors of 13195 are 5, 7, 13 and 29.

# Using the square root rule to check for primality.

def is_prime(n)
    if(n != 2)
        n_sqrt = Math.sqrt(n).round
          for i in 2..n_sqrt
              return false if(n%i==0)
          end
    end
    return true
end

def largest_prime_factor(num)
   largest_prime = 1
   found = false
   n = num
   while(n > 0)
      if(num%n == 0)
          if(is_prime(n))
              largest_prime = n if(is_prime(n))
              found = true
          end
      end
      n = n - 1
      break if(found)
   end
   largest_prime
end

largest_prime_factor(600851475143)   # Very Slow. Optimize It.
# largest_prime_factor(13195)
# largest_prime_factor(144)

# Ruby Ranges do not work from high to low 
# How can we use for loops in ruby ?

# Entry Condition, Exit Condition, Increment, Break, Flag