clf;
clc;
clear;
shumu=10;
t=-10:0.001:10;
p(1,shumu)=1;
p(2,shumu-1:shumu)=[2 0];
for n=2:shumu-1;
   p(n+1,:)=2*conv([1 0],p(n,2:end))-2*n*p(n-1,:);
end
for n=1:shumu;
    hold on
plot(t,polyval(p(n,:),t),'linewidth',1)
end
hold off;
% axis([-1 1 -100 100]);
title(['hermite多项式（',num2str(shumu),'个）']);
xlabel('x'),ylabel('p(x)')