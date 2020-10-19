clc;clf;clear;
x0=linspace(-1,1,11);
y0=1./(1+25*x0.^2);
p3=polyfit(x0,y0,3);
vpa(poly2sym(p3),3)
t=x0(1):0.01:x0(end);
y3=polyval(p3,t);
plot(x0,y0,'o',t,[1./(1+25*t.^2);y3],'linewidth',3)