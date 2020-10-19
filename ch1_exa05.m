%% Stability of the algorithm 
%% Integral calculation
%     / 1
%e^-1 |  x^n*e^x dx
%     / 0
%% Case 1
clear;clc;clf;close all;
I_0=0.6321;num=9;
I_n=zeros(1,num);
I_n(1)=1-I_0;
for ind=2:num;
I_0(ind)=1-ind*I_0(ind-1);
end
I_0'
plot(I_0,'*'); grid on
%% Case 2
I(9)=0.0684;
for ind=8:-1:1;
I(ind)=(1-I(ind+1))/ind;
end
I'
figure(2)
plot(I,'*');grid on
%% Matlab integration
syms x 
I_9=int(exp(-1)*x^9*exp(x),x,0,1)
vpa(I_9,4)
%%
