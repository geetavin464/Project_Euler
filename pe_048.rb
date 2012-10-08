
# 
# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
# 
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.


def last_ten_digits(num)
    digits = []
    result = num  
    first_iter_flag = true
         10.times do
             result = result/10 if(!first_iter_flag)
             first_iter_flag = false if(first_iter_flag)
             digits.unshift result%10 if(result != 0)
         end
     digits.join('').to_i   
end


def sum_of_power(n)
    case n
    when 0
        return 0
    when 1
        return 1
    else
        return last_ten_digits(n**n + sum_of_power(n-1))
    end
end

sum_of_power(1000)



