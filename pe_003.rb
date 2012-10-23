# PE#3
# Find the largest Prime Factor of a given number
# The prime factors of 13195 are 5, 7, 13 and 29.

# Using the square root rule to check for primality.
# Use factor trees to find largest prime factor

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
    
    if(is_prime(num))
        return num
    else
        i=2
        found = false
       while(!found)
            found = true if(is_prime(i) and num%i==0)
            return largest_prime_factor(num/i) if(found)
            i+=1
       end
    end
    
end

largest_prime_factor(600851475143)   # Very Slow. Optimize It.

# Why is the return statement no printing value ?!