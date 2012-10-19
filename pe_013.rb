# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.


def sum(file_name)
    f1 = File.open(file_name)
    sum = 0
    while(!f1.eof)
        sum+= f1.readline.to_i
    end
    sum
end

def first_ten_digits(file_name)
   num = sum(file_name)
   l = num.to_s.length
    (l-10).times do
        num = num/10
    end
   num
end

first_ten_digits('pe_013.txt')



