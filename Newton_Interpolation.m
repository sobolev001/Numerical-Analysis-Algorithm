function [P,T]=Newton_Interpolation(x,y)
if ~isequal(size(x),size(y))
    error(message('MATLAB:Newton_Interpolation:XYSizeMismatch'))
end %输入验证
x=x(:);y=y(:);%统一列向量化
n=length(x);%计算节点个数
P=zeros(1,n);P(end)=y(1);%初始化Newton多项式
Junchabiao=zeros(n,n);Junchabiao(:,1)=y;%初始化均差表
Basic_Fun=1;%初始化Newton 基函数
for j=2:n;
for i=j:n;%计算第j列均差表值
    Junchabiao(i,j)=...
    (Junchabiao(i,j-1)-Junchabiao(i-1,j-1))/(x(i)-x(i-(j-1)));
end
%计算Newton插值多项式
Basic_Fun=conv(Basic_Fun,[1,-x(j-1)]);
temp=zeros(1,n);temp((end-(j-1)):end)=Basic_Fun;
P=P+Junchabiao(j,j)*temp;
end
T=Junchabiao;
