

# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.
# 
# 3
# 7 4
# 2 4 6
# 8 5 9 3
# 
# That is, 3 + 7 + 4 + 9 = 23.
# 
# Find the maximum total from top to bottom in pe_067.txt (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.
# 
# NOTE: This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are 299 altogether! If you could check one trillion (1012) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)

def read(file_name)
   f = File.open(file_name)
   arr = []
   while(!f.eof)
      arr.push(f.readline.chomp.split(" ").to_a) 
   end
   arr
end

# Store the max sum for a cell ( in the route ending in that cell) as an intermediate DS
def max_sum_route(file_name)
    arr = read(file_name)    
    h = arr.length
    max_sum_arr = []
    max_sum_arr[0] = arr[0]
    for i in 1..h-1       
        l = arr[i].length
        temp_arr = []
        for j in 0..l-1
            add = 0
            case j
            when 0                  #first element in the row
                add = max_sum_arr[i-1][0].to_i
            when l-1                #last element in the row
                add = max_sum_arr[i-1][l-2].to_i
            else                    #any other element
                add = [max_sum_arr[i-1][j-1].to_i, max_sum_arr[i-1][j].to_i].max
            end
            temp_arr[j] =  arr[i][j].to_i + add
        end
        max_sum_arr[i] = temp_arr    
    end
    max_sum_arr[h-1].max
end

max_sum_route('Data_Files/pe_067.txt')
