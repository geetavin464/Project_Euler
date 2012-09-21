# Sum of all the multiples of 3 or 5 below 1000
 
def sum_multiples(n1,n2,limit)
   sum = 0
   for i in 1...limit
       if(i%n1 == 0 or i%n2 == 0)
          sum = sum + i
       end
   end   
   sum
end

sum_multiples(3,5,1000)

# for loop works well with ranges in ruby

# Extend the program so it takes any number of arguments for n1,n2
# Use *params
# Here comes the CATCH. I've to eliminate multiples common to 3 & 5

def sum_multiples(limit, *params)
   sum = 0
   for i in 1...limit
       params.each do |p|
           success = false
           if(i%p == 0)
              success = true
              sum = sum + i
           end
           break if success == true
       end
   end   
   sum
end

sum_multiples(1000,3,5)

# *params 
# To capture variable number of arguments or multiple arguments in a single paramter
# Place it after the normal parameter