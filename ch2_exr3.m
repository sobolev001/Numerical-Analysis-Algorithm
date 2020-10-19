clear;clf;clc;
x=0:pi/(180*60):pi/2;
y=cos(x);
plot(x,y,'o')
hold on
Xq=0:0.00001:pi/2;
Vr=cos(Xq);
 Vy=interp1(x,y,Xq);
 [I,V]=max(Vr-Vy)
 plot(Xq,[cos(Xq);Vy]);
 hold off