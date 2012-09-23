# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(n)
   sum = 0
   for i in 1..n
       sum = sum + i*i
   end 
   sum
end

def square_of_sum(n)
    sum = 0
    for i in 1..n
       sum = sum + i 
    end
    sum = sum*sum
end


def difference(n)
    square_of_sum(n) - sum_of_squares(n)
end

difference(100)