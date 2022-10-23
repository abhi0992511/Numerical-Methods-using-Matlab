g = @(x) exp(-x/5)-sin(x);
a = 0;
b = 1;
c = (b*g(a)-a*g(b))/(g(a)-g(b));
itr = 0;
while(abs(g(c))>0.0000001)
    if g(a)*g(c)<0
        b = c;
    else
        a=c;
    end
    c = (b*g(a)-a*g(b))/(g(a)-g(b));
    itr = itr + 1;
end
fprintf("%s\n","RegulaFalsi Method")
fprintf("%d %f\n",itr,c);
