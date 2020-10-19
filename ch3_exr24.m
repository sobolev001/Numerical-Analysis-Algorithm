%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%exercise 24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;clf;clc;
order=4;interval=[-pi,pi];
n=2*order+1;
x=linspace(-pi,pi,n+1);
x=x(1:end-1);
f=abs(x);
k=0:order;k=k';
An=2/n*cos(k*x)*f';
Bn=2/n*sin(k*x)*f';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%basic function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t=-pi:0.01*pi:pi;
ff_val=An(1)/2+An(2:end)'*cos(k(2:end)*t);
 plot(t,abs(t),t,ff_val,'.','linewidth',2)
 legend('original function data','fourier series')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
An
Bn
