g = @(x) exp(-x/5)-sin(x);
h = @(x) (-1/5)*exp(-x/5)-cos(x);
a = 1;
b = a - (g(a)/h(a));
itr = 0;
%fprintf("%d %f %f %f\n",itr,a,b,g(b));
while(abs(g(b))>0.0000001)
    a = b;
    b = a - (g(a)/h(a));
    itr = itr + 1;
end
fprintf("%s\n","Newton Method")
fprintf("%d %f\n",itr,b);
