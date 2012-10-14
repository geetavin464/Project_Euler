# PE#9
# Find the product abc, where a^2 + b^2 = c^2
# a+b+c=1000
# Find abc

# How to solve equations using ruby ?
# Trial & Error ? Brute Force
# Well dint take long for brute force

def product_of_pyth_triplet

    for a in 1...1000
        for b in 1...1000
            c = 1000 - a - b
            return a*b*c if(a*a + b*b == c*c)
        end
    end
    
end    

product_of_pyth_triplet