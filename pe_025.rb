
# The Fibonacci sequence is defined by the recurrence relation:
# 
#     Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# 
# Hence the first 12 terms will be:
# 
#     F1 = 1
#     F2 = 1
#     F3 = 2
#     F4 = 3
#     F5 = 5
#     F6 = 8
#     F7 = 13
#     F8 = 21
#     F9 = 34
#     F10 = 55
#     F11 = 89
#     F12 = 144
# 
# The 12th term, F12, is the first term to contain three digits.
# 
# What is the first term in the Fibonacci sequence to contain 1000 digits?


def get_num_of_digits(num)
    num_digits = 0
    result = num  
    first_iter_flag = true
         while(result != 0)
             result = result/10 if(!first_iter_flag)
             first_iter_flag = false if(first_iter_flag)
             num_digits+=1 if(result != 0)
         end
    num_digits
end

def fibonacci(n)
    case n
    when 0 
        return 0
    when 1
        return 1
    else
        return fibonacci(n-1) + fibonacci(n-2)
    end
end

def fib_with_m_digits(m)
    found = false
    n = 1
    while(found == false) do
        if get_num_of_digits(fibonacci(n)) == m.to_i
            fib = n
            found = true
        end
        n+=1
    end
    fib
end

fib_with_m_digits(1000)