format long;
clear;clc;
x=0:0.1:0.5;
y=[1,0.995,0.98007,0.95534,0.92106,0.87758];
[P,T]=Newton_Interpolation(x,y)
polyval(P,0.048)