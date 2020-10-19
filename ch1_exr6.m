clear;clc;format long
n=100;
Y0=28;Y0^2
sqrt(783)
Y=zeros(1,n);
Y1(1)=Y0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for ind=2:n;
Y1(ind)=Y1(ind-1)-sqrt(783)/100;
end
Y1(end)
Y2(1)=Y0;
for ind=2:n;
Y2(ind)=Y2(ind-1)-27.982/100;
end
Y2(end)