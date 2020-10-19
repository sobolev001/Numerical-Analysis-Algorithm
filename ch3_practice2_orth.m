clc;clf;clear;format long
x=[0 0.1 0.2 0.3 0.5 0.8 1.0];
y=[1.0 0.41 0.50 0.61 0.91 2.02 2.46];
w=ones(size(x));
[P,P_orth,A]=Least_Square_Approximation(x,y,w,4)
plot(x,y,'o');hold on;
x0=0:0.01:1;
plot(x0,polyval(P,x0),'linewidth',3)
hold off