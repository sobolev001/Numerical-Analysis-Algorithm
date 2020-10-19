clc,clear 
x0=[0 3 5 7 9 11 12 13 14 15]; 
y0=[0 1.2 1.7 2.0 2.1 2.0 1.8 1.2 1.0 1.6]; 
x=0:0.01:15; 
y1=lagrange(x0,y0,x); %调用前面编写的Lagrange插值函数
y2=interp1(x0,y0,x,'linear'); 
y3=interp1(x0,y0,x,'pchip'); 
pp1=csape(x0,y0,'complete',[0 0]);y4=ppval(pp1,x); 
pp2=csape(x0,y0,'second'); y5=ppval(pp2,x); 
pp3=csape(x0,y0,'period'); y6=ppval(pp3,x); 
fprintf('比较一下不同插值方法和边界条件的结果:\n') 
fprintf('x y1 y2 y3 y4 y5 y6\n') 
xianshi=[x',y1',y2',y3',y4',y5']; 
fprintf('%f\t%f\t%f\t%f\t%f\t%f\n',xianshi') 
subplot(2,3,1), plot(x0,y0,'+',x,y1), title('Lagrange') 
subplot(2,3,2), plot(x0,y0,'+',x,y2), title('Piecewise linear') 
subplot(2,3,3), plot(x0,y0,'+',x,y3), title('Piecewise cubic hermite') 
subplot(2,3,4), plot(x0,y0,'+',x,y4), title('Spline1') 
subplot(2,3,5), plot(x0,y0,'+',x,y5), title('Spline2') 
subplot(2,3,6), plot(x0,y0,'+',x,y6), title('Spline3') 
dyx0=ppval(fnder(pp1),x0(1)) %求x=0处的导数
ytemp=y3(131:151); 
index=find(ytemp==min(ytemp)); 
xymin=[x(130+index),ytemp(index)]