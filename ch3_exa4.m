clear;clc;
P=Chebyshev_Interpolation('exp',[0,1],4)
x=0:0.01:1; 
plot(x,[exp(x);polyval(P,x)])
