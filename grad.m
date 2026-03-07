function g = grad(bet,x,y)

sum1=0;
sum2=0;
for i=1:5
    z=bet(1)+bet(2)*x(i);
    sum1=sum1+(y(i)-(exp(z)/(1+exp(z))));
    sum2=sum2+(x(i)*y(i)-(exp(z)*x(i)/(1+exp(z))));
end
g=[sum1;sum2];
end