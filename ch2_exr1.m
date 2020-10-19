%interplation polynomial
clear;
clc;
x=[1 -1 2];
y=[0 -3 4];
p1=polyfit(x,y,2)
[p2,Tb]=Newton_fit(x,y)
x1=-1:0.01:2;
y1=polyval(p1,x1);
handle=plot(x,y,'o',x1,y1,'-','linewidth',2);
grid on