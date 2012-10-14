# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.


def is_prime(n)
    if(n != 2)
        n_sqrt = Math.sqrt(n).round
          for i in 2..n_sqrt
              return false if(n%i==0)
          end
    end
    return true
end


def sum_of_primes(limit)   
   sum = 0
       for i in 2...limit
         sum+= i if(is_prime(i))
       end 
   sum
end


sum_of_primes(2000000)

