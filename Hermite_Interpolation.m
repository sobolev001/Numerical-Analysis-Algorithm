function [P,T]=Hermite_Interpolation(x,y,y_prim)
if ~isequal(size(x),size(y))
    error(message('MATLAB:Newton_Interpolation:XYSizeMismatch'))
end %输入验证
x=x(:);y=y(:);m=y_prim; %统一列向量化
n=length(x);%计算节点个数
P=zeros(n-1,4);%初始化hermite多项式
Der_x=diff(x);
for j=1:n-1;
%计算hermite插值多项式
a1=conv(([0,1]+2/Der_x(j)*[1,-x(j)]),conv([1,-x(j+1)],[1,-x(j+1)])/Der_x(j)^2);
a2=conv(([0,1]-2/Der_x(j)*[1,-x(j+1)]),conv([1,-x(j)],[1,-x(j)])/Der_x(j)^2);
b1=conv([1,-x(j)],conv([1,-x(j+1)],[1,-x(j+1)])/Der_x(j)^2);
b2=conv([1,-x(j+1)],conv([1,-x(j)],[1,-x(j)])/Der_x(j)^2);
P(j,:)=a1*y(j)+a2*y(j+1)+b1*m(j)+b2*m(j+1);
end
