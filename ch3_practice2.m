clc;clf;clear;
x=[0 0.1 0.2 0.3 0.5 0.8 1.0];
y=[1.0 0.41 0.50 0.61 0.91 2.02 2.46];
p3=polyfit(x,y,3);vpa(poly2sym(p3),4)
p4=polyfit(x,y,4);vpa(poly2sym(p4),4)
t=x(1):0.01:x(end);
y3=polyval(p3,t);
y4=polyval(p4,t);
plot(x,y,'o',t,[y3;y4],'linewidth',3)
    
