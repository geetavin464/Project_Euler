# PE#5
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def is_divisible(num)
    check_list = 11..20
    for i in check_list
       return false if(num%i != 0) 
    end
    return true
end

def smallest_divisible_num
    num = 2520
    loop do 
        return num if(is_divisible(num))
        num+=2520    
    end
end

smallest_divisible_num

