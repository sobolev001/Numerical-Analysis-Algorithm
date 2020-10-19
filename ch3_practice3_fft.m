clear;clf;clc;
order=16;interval=[-pi,pi];
n=2*order+1;
x=linspace(-pi,pi,n+1);
f=x.^2.*cos(x);
x=fft(f)
plot(imag(x))