clear;
clc;
clf;
x=1:6;
y=[16 18 21 17 15 12];
 t=1:0.01:6;
Lag=polyfit(x,y,5);
plot(x,y,'o',t,[polyval(Lag,t);pchip(x,y,t);spline(x,y,t);])
  legend('data','Largrange','pchip','spline',8)
