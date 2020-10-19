clear;
clc;
m=10;
x=0:2*pi/(2*m+1):2*pi*2*m/(2*m+1);
figure(1)
plot(x,sin(2*x),'o')
figure(2)
plot(x,sin(2*x).*sin(x),'o')
figure(3)
plot(x,cos(x),'o')
grid on
figure(4)
plot(x,cos(2*x).*cos(x),'o')
grid on
axis([0,2*pi,-1,1])