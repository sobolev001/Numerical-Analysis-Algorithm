format long;
clear;clc;
x=[0.40 0.55 0.65 0.80 0.90 1.05];
y=[0.41075,0.57815,0.69675,0.88811,1.02652,1.25382];
[P,T]=Newton_Interpolation(x,y)
polyval(P,0.596)