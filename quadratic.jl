# QUADRATIC EQUATION...

function quad(a,b,c)
    D=(b^2)-(4*a*c)
    if(D<0)
        root1=(-b)/(2*a)
        root2=(-b)/(2*a)
        imaginary=sqrt(-D)/(2*a)
        r1=string(root1," + i",imaginary)
        r2=string(root2," - i",imaginary)
        return r1,r2
    else
        root1=(-b+sqrt(D))/(2*a)
        root2=(-b-sqrt(D))/(2*a)
        return root1,root2
    end
end
println("The quadratic equation is ax^2+bx+c=0")
println("Enter the value of a:-")
a=readline();
a=parse(Int64,a)
println("Enter the value of b:-")
b=readline();
b=parse(Int64,b)
println("Enter the value of c:-")
c=readline();
c=parse(Int64,c)
R1,R2=quad(a,b,c)
println("ROOT1 : ",R1," and ROOT2 : ",R2)
println("-----------------------------BY :----------------------------")
println("NAME : S M SUTHARSAN RAJ")
println("SRN : PES1UG20CS362")
println("-------------------------------------------------------------")
       
