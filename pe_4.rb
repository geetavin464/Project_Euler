# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

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

# get_digits(937)

def is_palindrome(arr)
    length = arr.length
    is_pal = true
    for i in 0..length/2      
       if !(arr[i] == arr[length-i-1])
           is_pal = false
       end
    end
    is_pal
end

# is_palindrome([1,2,2,1])
# is_palindrome([1,2,3,2,1])


def largest_pal_prod_3_digit_nums
   i = 999
   j = 999
   prod = 0
   is_pal = false
   while(i > 99 and !is_pal)
       while(j > 99)
         prod = i*j
         is_pal = is_palindrome(get_digits(prod))
         j = j-1  
       end
       i = i-1
   end 
    return prod
end

largest_pal_prod_3_digit_nums

# Check your assumptions. May not always be true
# Are you calling the main fn
# Are the variable names right ?
# When you are finding the largest, start from the higher end
