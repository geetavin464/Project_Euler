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

# length_of_sequence(13)

def longest_sequence(limit)
    longest = curr= 0
    for i in 1...limit
        curr = length_of_sequence(i)
        longest = curr if(curr > longest)
    end
    longest
end

longest_sequence(1000000)