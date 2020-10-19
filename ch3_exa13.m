clear;clc;
j=0:7;x0=j/4;%定义节点
f=@(x)x.^4-3*x.^3+2*x.^2-tan(x.*(x-2));%构造函数
y=feval(f,x0);%生成节点处函数值
order=4;k=0:order;k=k';
x=pi*x0-pi;%做区间变换 
an=2/8*cos(k*x)*y'%求Fourier余弦系数
bn=2/8*sin(k*x)*y'%求Fourier正弦系数
%可视化
t=0:0.05:2;y=pi*(t-1);
Four_appr=an(1)/2+an(2:order)'*cos(k(2:order)*y)+bn(2:order-1)'*sin(k(2:order-1)*y);
plot(t,[feval(f,t);Four_appr],'linewidth',2)
legend('original function data','fourier series')