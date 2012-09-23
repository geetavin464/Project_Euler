#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def smallest_divisible_num
    divisible_flag = false
    small_divisible_num = 21
    num = 21
    while(!divisible_flag)
        divisible_flag = true
        for i in 1..20
           if !(num%i == 0)
               divisible_flag = false
           end 
        end     
        small_divisible_num = num if divisible_flag
        num = num+1
    end
    small_divisible_num
end

smallest_divisible_num