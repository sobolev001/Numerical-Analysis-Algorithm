clear;clc;
x=0.2:0.2:1;
f=[0.98 0.92 0.81 0.64 0.38];
xi=0.2:0.01:1;
p=polyfit(x,f,4);
ps=csape(x,f,'second');
plot(x,f,'o',xi,polyval(p,xi),xi,fnval(ps,xi));grid on
