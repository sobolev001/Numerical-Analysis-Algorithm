clear;clc;clf;format long
x=1.92:0.0001:2.08;
y1=(x-2).^9;
p=2*ones(1,9);
pn=poly(p);
y2=polyval(pn,x);
plot(x,y1,x,y2,'-','linewidth',2)