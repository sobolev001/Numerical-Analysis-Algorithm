clc;
clear;
theta=-1:0.001:1;
for n=1:3;
polar(theta,0.5*n*cos(n*acos(theta)));
hold on;
end
hold off;
