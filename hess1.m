function h = hess1(bet,x,y)

sum1=0;
sum2=0;
sum3=0;
for i=1:5
    z=bet(1)+bet(2)*x(i);    
    sum1=sum1+(exp(2*z)/(1+exp(z))^2-(exp(z)/(1+exp(z))));
    sum2=sum2+(exp(2*z)*x(i)^2/(1+exp(z))^2-(exp(z)*x(i)^2/(1+exp(z))));
    sum3=sum3+(exp(2*z)*x(i)/(1+exp(z))^2-(exp(z)*x(i)/(1+exp(z))));
end
h=[sum1 sum3;sum3 sum2];
end