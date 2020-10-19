clc;
clear;
clf;
%data 
x0=0.4:0.1:0.8;
y0=log(x0);
%Linear interpolation and quadratic interpolation
L1=polyfit(x0(2:3),y0(2:3),1);
L2=polyfit(x0(1:3),y0(1:3),2);
%Approximate calculation
x=0.54;
y=[polyval(L1,x);polyval(L2,x)]
plot(x,log(x),'o',x,y,'*')
%global approximation
cx=0.5:0.001:0.6;
cy1=polyval(L1,cx);
cy2=polyval(L2,cx);
hold on
plot(cx,cy1,cx,cy2)
hold off
grid on