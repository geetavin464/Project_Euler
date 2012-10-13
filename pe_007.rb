# PE#7
# Find the 10001th prime number

# Finding the nth prime number ?!


def is_prime(n)
flag_prime = false
    if(n == 2)
        return true
    else
        n_sqrt = Math.sqrt(n).round
          for i in 2..n_sqrt
             break if(n%i == 0)
             flag_prime = true if( (i==n_sqrt) and n%i != 0 ) 
          end
    end
    flag_prime
end


def nth_prime(n)
   found = false
   i = 2
   count = 0
   while(found == false)
       count+=1 if is_prime(i)
       if(count == 10001)
          found = true
       else
          i+=1     
       end
   end
   return i  
end

nth_prime(10001)