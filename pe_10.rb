# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.


def is_prime(n)
flag_prime = false
n_limit = Math.sqrt(n)
  for i in 2..n_limit
     break if(n%i == 0)
     flag_prime = true if( (i==n_limit or i==n_limit.ceil-1) and n%i != 0 ) 
  end
flag_prime
end


def sum_of_primes(limit)   
   sum = 0
       for i in 2...limit
         sum = sum + i if(is_prime(i))
       end 
   sum
end


sum_of_primes(2000000)

# The block inside inject cannot take conditions !
