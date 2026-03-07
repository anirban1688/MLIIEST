x=[29 15 33 28 39];
y=[0 0 1 1 1];
bet=[0;0];

for i=1:10
    sum=0;
    h=hess1(bet,x,y);
    g=grad(bet,x,y);
for j=1:5
    sum=sum+(-log(1+exp(bet(1)+bet(2)*x(j)))+y(j)*(bet(1)+bet(2)*x(j)));
end
f=-sum;
bet=bet-inv(h)*g;
disp(g);
disp(h);
disp(bet);
end