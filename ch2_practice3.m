clear;
clc;
y=0:8;
x=y.^2;
p=polyfit(x,y,4);
ps=csape(x,y,'complete',[0 1/16]);
xi=0:0.01:64;
plot(xi,sqrt(xi),xi,polyval(p,xi),xi,fnval(ps,xi))
  legend('data','Largrange','cubicspline')