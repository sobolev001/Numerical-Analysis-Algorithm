clc;clear;
x_interp=-5:5;
w11=poly(x_interp);
x=-5:0.01:5;
plot(x,polyval(w11,x),'linewidth',2)
grid on
figure(2)
k=10:-1:0;
x_interp=5*cos((2*k+1).*pi./22);
w11=poly(x_interp);
x=-5:0.01:5;
plot(x,polyval(w11,x),'linewidth',2)
grid on