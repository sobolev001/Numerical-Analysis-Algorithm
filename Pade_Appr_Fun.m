function [an,bm]=Pade_Appr_Fun(c,n,m)
%%本程序算法见数值分析P81(5.9)至(5.12)式
%[an,bm]=Pade_Appr_Fun(c,n,m)
%c为函数taylor展开多项式系数
%n,m为Pade逼近有理式的次数
an=zeros(1,n+1);%Pade有理式的分子多项式系数（numerator polynomial coefficients）
bm=zeros(1,m+1);%（denominator polynomial coefficients）Pade有理式的分母多项式系数
c=c(end:-1:1);%Taylor多项式系数逆序排列
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