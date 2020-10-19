clear all;clf;clc;
x=[0,1];
y=x;
y_deriv=[1,2];
P=Hermite_Interpolation(x,y,y_deriv)