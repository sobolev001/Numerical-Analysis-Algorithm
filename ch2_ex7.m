clc;clear;close all;figure;
set(gcf,'outerposition',get(0,'screensize'));
set(gcf,'menubar','none')
axis([-1 1 -1 1])%设置坐标轴的坐标范围
hold on
Ix=zeros(1,10000);Iy=Ix;s=1;
while 1
    [x,y,button]=ginput(1);
    if  button==3
        break
    else
        plot(x,y,'k.','MarkerSize',10)     %画点
        Ix(s)=x;Iy(s)=y;
    end
    Lx=Ix(Ix~=0);n=length(Lx);
    s=s+1;
end
Ly=Iy(1:n);
t=(1:0.05:n)';
u=spline(1:n,Lx,t);
v=spline(1:n,Ly,t);
plot(Lx,Ly,'.',u,v,'-','linewidth',2);
hold off