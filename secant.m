a=1;
b=2;
c=(a*f(b)-b*f(a))/(f(b)-f(a));
count = 0;
while abs(a-b) > 0.0000001
    a=b;
    b=c;
    c=(a*f(b)-b*f(a))/(f(b)-f(a));
    count=count+1;
end
myTable1.Properties.VariableNames={'Iterations','a','b','c','f(a)','f(b)','f(c)'};
fprintf("%s\n",'Secant Method')
fprintf("%d %f\n",count,b);
function [y] = f(x)
y = x.^2 - 2;
end
