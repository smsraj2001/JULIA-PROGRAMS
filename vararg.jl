# MULTIPLE METHODS...

function add(a::Number,b::Number)
    println("For the given arguments we can perform sum:-")
    sum=a+b
    return sum
end
function add(a::Number,b::Number,x...)
    println("For the given arguments we can perform sum of products of n*nth argument:-")
    n=length(x)
    j=3
    sum=a+2*b
    for i in 1:n
        prod=j*x[i]
        sum=sum+prod
        j=j+1
    end
    return sum
end
function add(a::Number)
    println("Please enter a minimum of 2 numbers...")
    return a
end
function add()
    println("Sorry....NO PARAMETERS")
end
SUM=add(100,8)
println("The SUM is : ",SUM)
SUM=add(5,2)
println("The SUM is : ",SUM)
SUM=add(1,2,3,4,5)
println("The SUM is : ",SUM)
SUM=add(10,47,89)
println("The SUM is : ",SUM)
SUM=add(6)
println("The SUM is : ",SUM)
SUM=add()
println("The SUM is : ",SUM)
println("-----------------------------BY :----------------------------")
println("NAME : S M SUTHARSAN RAJ")
println("SRN : PES1UG20CS362")
println("-------------------------------------------------------------")