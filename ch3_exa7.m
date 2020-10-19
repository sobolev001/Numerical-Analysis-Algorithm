clear;clc;
P=Chebyshev_Interpolation(@(x)1./(1+x.^2),[-5,5],10)
x=-5:0.01:5;
plot(x,[1./(1+x.^2);polyval(P,x)])