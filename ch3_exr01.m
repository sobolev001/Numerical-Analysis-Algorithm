clear;clc;clf;hold off
x=0:0.001:1;
y=Bernstein_polynomial(@(x)sin(pi/2*x),x,3);
plot(x,y,'b',x,sin(pi/2*x),'r','linewidth',3)
