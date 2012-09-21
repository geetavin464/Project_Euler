# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def get_digits(num)
   #  how to extract the unit's digit of a number
   # Is there a ruby method to do this ?
   # How to extract the 9 from 129
   # reduce it to a decimal & round it ?
   # store all the digits in an array
   digits = []
   result = num  
        while(result != 0)
            if( (0..9).include?(result))
                digits.push result
                result = 0
            else
                result = result/10
                digits.unshift result%10 if(result != 0)
            end
        end
    digits
end

get_digits(937)

# Is everything changing for each iteration of the loop. (everything that needs to change)