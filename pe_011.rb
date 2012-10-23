# In the 20×20 grid below, four numbers along a diagonal line have been marked in red.


def get_arr(file_name)
    f1 = File.open(file_name)
    arr = []
    while(!f1.eof)
        line = f1.readline.split(" ")
        arr << line
    end
    arr
end


def horiz_prod(arr)
   l = arr[0].length
   greatest_prod = 1
   i=0
   while(arr[i])
       for j in 0..l-5
           prod = 1
           4.times do 
               prod = prod*arr[i][j].to_i
               j+=1
           end
           greatest_prod = prod if(greatest_prod < prod)
       end 
       i+=1
   end
    greatest_prod
end

def diag_prod(arr)
    l = arr[0].length
    greatest_prod = 1
    i=0
    
    while( j<=l-1 and arr[i])
       4. 
        
    end

end

def vert_prod(arr)
   l = arr[0].length
   greatest_prod = 1
   j = 0
   
   for i in 0..l-1
       while(arr[j])
           prod = 1
           4.times do 
               prod = prod*arr[j][i].to_i
               j+=1
           end
           greatest_prod = prod if(greatest_prod < prod)
           j-=3
       end
   end
   greatest_prod  
end


def greatest_prod(file_name)
    arr = get_arr(file_name)
    prod_h = horiz_prod(arr)
    prod_v = vert_prod(arr)
end

greatest_prod('pe_011.txt')
