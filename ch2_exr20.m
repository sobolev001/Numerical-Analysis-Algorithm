clc;clear;clf;
x=[0.25 0.30 0.39 0.45 0.53];
y=[0.5000 0.5477 0.6245 0.6708 0.7280];
psa=csape(x,y,'complete',[1.000 0.6868]);
psb=csape(x,y,'second',[0 0]);
A=psa.coefs
B=psb.coefs
xi=0.25:0.01:0.53;
ya=ppval(psa,xi);
yb=ppval(psb,xi);
plot(xi,[ya;yb])
axis tight
