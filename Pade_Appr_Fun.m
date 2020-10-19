function [an,bm]=Pade_Appr_Fun(c,n,m)
%%�������㷨����ֵ����P81(5.9)��(5.12)ʽ
%[an,bm]=Pade_Appr_Fun(c,n,m)
%cΪ����taylorչ������ʽϵ��
%n,mΪPade�ƽ�����ʽ�Ĵ���
an=zeros(1,n+1);%Pade����ʽ�ķ��Ӷ���ʽϵ����numerator polynomial coefficients��
bm=zeros(1,m+1);%��denominator polynomial coefficients��Pade����ʽ�ķ�ĸ����ʽϵ��
c=c(end:-1:1);%Taylor����ʽϵ����������
first_col=-c((n-m+1)+1:n+1)';
first_row=-c(n+1:(n+m-1)+1)';
H=hankel(first_col,first_row);
% hankel(C,R) is a Hankel matrix whose first column is C and
%  whose last row is R.
bm=[H\c(n+2:n+m+1)';1];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if n>m
    temp=[zeros(n-m,1);bm];
else
    temp=bm;
end
B=flipud(hankel(temp));%flip matrix in up/down direction.
an=B*c(1:n+1)';
an=an(end:-1:1);
end