clear;
clf;
clc;
format long
err=0.001
x=10
y=x-err
lx=log(x)
ly=log(y)
%%%%%%%%%%%%%%%%%%%%%%
% approximation
%%%%%%%%%%%%%%%%%%%%%%%%%%%
num=5;
sx=vpa(lx,num)
sy=vpa(ly,num)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
as=log(sx)-log(sy) %approximation value
a=log(lx)-log(ly)%approximation value
pause
clc;
bs=log(sx/sy)%approximation value
b=log(lx/ly)%real value