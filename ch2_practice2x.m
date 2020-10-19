clc;clear;clf;
x0=-1+2*[0:10]/10; y0=1./(1+25*x0.^2);
x=-1:.015:1; 
[L,y]=lagrange_fit(x0,y0,x); % Lagrange interpolation
ya=1./(1+25*x.^2); 
plot(x,ya,x,y,':')
grid on
y1=interp1(x0,y0,x,'cubic'); 
y2=interp1(x0,y0,x,'spline');
plot(x,ya,x,y1,':',x,y2,'--')