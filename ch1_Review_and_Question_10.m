% the Sum of series
clear all;clc;
for n=1:10:1e2;
    temp=1:n;
    S(n)=sum(1./temp);S(S==0)=NaN;clf;
    h=plot(temp,S(1:n),'.',n,S(n),'o','MarkerSize',10, 'MarkerFaceColor','g');
    set(h,'linewidth',2)
    drawnow
    axis([0,n,0,S(n)+1]);grid on
end
