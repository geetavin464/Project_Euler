# 
# The following iterative sequence is defined for the set of positive integers:
# 
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# 
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.



# Iterative Method

def length_of_sequence(n)
   length = 1
   while(n>1)
      if n.even?
          n = n/2 
      else
          n = 3*n+1
      end
      length+=1
   end
    length
end

# Recursive Method Using Memoization
require 'rubygems'
require 'memoize'
include Memoize

a = Time.now

def length_of_sequence(n)
    return 1 if(n==1)
    next_term = n.even? ? n/2 : 3*n+1
    return length_of_sequence(next_term) + 1
end

def longest_sequence(limit)
    longest_seq = 1
    longest_num = 1
    curr = 1
    memoize(:length_of_sequence)
    for i in 1..limit
        curr_length = length_of_sequence(i)
        if(curr_length > longest_seq)
            longest_seq = curr_length 
            longest_num = i
        end
    end
    longest_num
end

longest_sequence(1000000)
b = Time.now
puts " The script took #{b-a} seconds"
