format long;
clear;clc;
x=[0.32 0.34 0.36];
y=[0.314567,0.333487,0.352274];
P=polyfit(x,y,2);
polyval(P,0.3367)
sin(0.3367)