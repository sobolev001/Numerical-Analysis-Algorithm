clear;clc;clf;
a=-5;b=5;num=11;
hold on
%%Lagrange Interpolation
x=linspace(a,b,num);
f=1./(1+x.^2);
Lp=polyfit(x,f,num-1);
%%Chebyshev Lagrange Interpolation
x=(b-a)/2*cos((2*(1:num)-1)/(2*num)*pi)+(a+b)/2;
f=1./(1+x.^2);
Tp=polyfit(x,f,num-1);
xi=linspace(-5,5,1000);
plot(xi,[polyval(Lp,xi);polyval(Tp,xi);1./(1+xi.^2)])
grid on
hold off