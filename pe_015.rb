
# Starting in the top left corner of a 2×2 grid, there are 6 routes (without backtracking) to the bottom right corner.
# 
# How many routes are there through a 20×20 grid?

# The Grid can be modelled as a pascals triangle, with the start node being the bottom right corner for the grid
# for a nxn grid, the number of levels in the pascals triangle is 2*n+1

def pascals_triangle_max(size)
    levels = 2*size+1
    pascals = [[0], [1,1]]  
    l=3
    for i in 2..levels-1
        temp_arr = []
        for j in 0..l-1
            case j
            when 0
                temp_arr[j] = pascals[i-1][j] 
            when l-1
                temp_arr[j] = pascals[i-1][j-1] 
            else
                temp_arr[j] = pascals[i-1][j-1] + pascals[i-1][j]
            end  
        end
        pascals[i] = temp_arr
        l+=1
    end
    pascals[levels-1].max
end

pascals_triangle_max(20)