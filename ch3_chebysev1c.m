clf;
clc;
clear;
shumu=18;
t=-1:0.01:1;
p(1,shumu)=1;
p(2,shumu-1:shumu)=[1 0];
for n=2:shumu-1;
   p(n+1,:)=2*conv([1 0],p(n,2:end))-p(n-1,:);
end
for n=1:shumu;
    hold on
plot(t,2^(1-n)*polyval(p(n,:),t),'linewidth',1)
end
hold off;
% axis([-1 1 -1 1]);
title(['Chebyshev����ʽ��',num2str(shumu),'����']);
xlabel('x'),ylabel('p(x)')