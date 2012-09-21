# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def sum_even_fib(upper_limit)
   sum = fib0 = 0
   fib = 1
   while (fib < upper_limit)
       if(fib%2 == 0)
           sum = sum + fib
       end
       temp = fib0
       fib0 = fib
       fib = fib + temp
   end 
   sum
end

sum_even_fib(4000000)

# for loop is good, when you've to execute code on every increment. Coz it does auto-increment for us
# while is good, if you execute on specific numbers, not every increment

# Be careful with the logic. 

