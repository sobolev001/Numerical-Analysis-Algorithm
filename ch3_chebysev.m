clf;
clc;
clear;
shumu=6;
t=-1:0.001:1;
p(1,shumu)=1;
p(2,shumu-1:shumu)=[1 0];
for n=2:shumu-1;
   p(n+1,:)=2*conv([1 0],p(n,2:end))-p(n-1,:);
end
for n=1:shumu;
    hold on
plot(t,2.^(-n+1).*polyval(p(n,:),t),'linewidth',3)
end
hold off;
% axis([-1 1 -1 1]);
title(['Chebyshev多项式（',num2str(shumu),'个）']);
xlabel('x'),ylabel('p(x)')