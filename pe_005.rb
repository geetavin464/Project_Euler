# PE#5
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def is_divisible(num)
    for i in 1..20
       return false if(num%i != 0) 
    end
    return true
end

def smallest_divisible_num
    num = 20
    loop do 
        return num if(is_divisible(num))
        num+=20    
    end
end

smallest_divisible_num

