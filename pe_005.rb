# PE#5
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def is_divisible(num)
    is_div_flag = true
    while(is_div_flag == true)
        i = 20
        while(i > 1)
            if(num%i != 0 )
                is_div_flag = false
            end
            break if(is_div_flag == false)
            i=i-1
        end
    end
    return is_div_flag
end

def smallest_divisible_num
    num = 20
    found = false
    while(found == false) 
        if(is_divisible(num))
            found = true 
            smallest_div_num = num
        end
        puts "\nCurrent num is"
        print num
        num+=20    
    end

    smallest_div_num
end

smallest_divisible_num

