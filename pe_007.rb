# PE#7
# Find the 10001th prime number

# Finding the nth prime number ?!

def is_prime(n)
    if(n != 2)
        n_sqrt = Math.sqrt(n).round
          for i in 2..n_sqrt
              return false if(n%i==0)
          end
    end
    return true
end


def nth_prime(n)
   i = 2       #First Prime Number        
   count = 0   # Track 'n'th prime number
   loop do
     count+=1 if is_prime(i)   
     return i if(count == 10001)
     i+=1     
   end
end

nth_prime(10001)