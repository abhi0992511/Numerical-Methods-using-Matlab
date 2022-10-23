g = @(x) exp(-x/5)-sin(x);
a = 0;
b = 1;
c = (a+b)/2;
itr = 0;
while(abs(g(c))>0.0000001)
    if g(a)*g(c)<0
        b = c;
    else
        a=c;
    end
    c = (a+b)/2;
    itr = itr + 1;
end
fprintf("%s\n","Bisection Method")
fprintf("%d %f\n",itr,c);
