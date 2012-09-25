# PE#9
# Find the product abc, where a^2 + b^2 = c^2
# a+b+c=1000
# Find abc

# How to solve equations using ruby ?
# Trial & Error ? Brute Force
# Well dint take long for brute force

def product_of_pyth_triplet

found = false

        for a in 1...1000
            break if found == true
            for b in 1...1000
                break if found == true
                c = 1000 - a - b
                if(a*a + b*b == c*c)
                    prod = a*b*c
                    found = true
                end
            end
        end

prod
end    

product_of_pyth_triplet