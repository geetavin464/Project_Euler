# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# 
# What is the sum of the digits of the number 2^1000?


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


def sum_of_digits_base_power(base, power)  
 prod = 1
 1000.times do 
    prod =  prod*2
 end
    get_digits(prod).inject {|sum, elem| sum+elem}
end

sum_of_digits_base_power(2,1000)