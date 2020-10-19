function [P,T]=Newton_Interpolation(x,y)
if ~isequal(size(x),size(y))
    error(message('MATLAB:Newton_Interpolation:XYSizeMismatch'))
end %������֤
x=x(:);y=y(:);%ͳһ��������
n=length(x);%����ڵ����
P=zeros(1,n);P(end)=y(1);%��ʼ��Newton����ʽ
Junchabiao=zeros(n,n);Junchabiao(:,1)=y;%��ʼ�������
Basic_Fun=1;%��ʼ��Newton ������
for j=2:n;
for i=j:n;%�����j�о����ֵ
    Junchabiao(i,j)=...
    (Junchabiao(i,j-1)-Junchabiao(i-1,j-1))/(x(i)-x(i-(j-1)));
end
%����Newton��ֵ����ʽ
Basic_Fun=conv(Basic_Fun,[1,-x(j-1)]);
temp=zeros(1,n);temp((end-(j-1)):end)=Basic_Fun;
P=P+Junchabiao(j,j)*temp;
end
T=Junchabiao;
