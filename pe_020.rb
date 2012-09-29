
# n! means n × (n − 1) × ... × 3 × 2 × 1
# 
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# 
# Find the sum of the digits in the number 100!


def factorial(n)
    case n
    when 0 
        return 1
    when 1
        return 1
    else
        return n*factorial(n-1)
    end
end

def get_digits(num)
   digits = []
   result = num  
   first_iter_flag = true
        while(result != 0)
            result = result/10 if(!first_iter_flag)
            first_iter_flag = false if(first_iter_flag)
            digits.unshift result%10 if(result != 0)
        end
    digits
end

def sum_of_digits_in_factorial(n)
    
    digits = get_digits(factorial(n))
    
    digits.inject {|elem,sum| elem+sum}
    
end

sum_of_digits_in_factorial(100)