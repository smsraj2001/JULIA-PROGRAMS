# BUBBLE SORT...

function compare(a,passes,charac)
    no_swaps = 0
    global flag
    (cmp(charac,"D")==0) ? flag=true : flag=false
    (flag) ? 
    ( for i in 1:(length(a) - 1 - passes)
        if(a[i] < a[i+1])
            no_swaps += 1
            tmp = a[i]
            a[i] = a[i+1]
            a[i+1] = tmp
        end
    end
    ) :
    (
        for i in 1:(length(a) - 1 - passes)
            if(a[i] > a[i+1])
                no_swaps += 1
                tmp = a[i]
                a[i] = a[i+1]
                a[i+1] = tmp
            end
        end
    )
    return no_swaps
end
function sort(a,ch)
    passes = 0
    charac=ch
    while(true)
        no_swaps = compare(a, passes,charac)
        if no_swaps == 0 
            break
        end
        passes += 1
    end
    return a
end
println("Enter the size of the array:-")
n=readline();
n=parse(Int64,n)
println("Enter 'D' for Descending order OR 'A' for Ascending order:-")
ch=readline();
println("Enter ",n," values of the array:-")
a = Int64[]
global j=0
while(j<n)   
    num = readline()
    num = parse(Int64, num) 
    push!(a,num)
    global j+=1
end
b=sort(a,ch)
println("The sorted array is:-")
println(b)
println("-----------------------------BY :----------------------------")
println("NAME : S M SUTHARSAN RAJ")
println("SRN : PES1UG20CS362")
println("-------------------------------------------------------------")