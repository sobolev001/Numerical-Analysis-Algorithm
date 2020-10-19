function [N,DD]=Newton_fit(x,y)
%[N,DD]=Newton_fit(x,y)
% A recursive algorithm to compute Newton interpolation polynomial
% x : input nodes vector.
% y : input data value vector.
% N : output Newton interpolation polynomial
% DD: output Divided Differences Table
if nargin<2
    error('Not enough input arguments.')
end
n=length(x);% number of nodes.
m=length(y);% number of function values.
if n~=m
    error('Dimensions of input vectors are not consistent.');
end
%%
DD=zeros(n,n);N=[];
if n==1
    DD=y;N=y;
else
    [Ns,DDs]=Newton_fit(x(1:end-1),y(1:end-1));
    DD(1:end-1,1:end-1)=DDs;
    DD(end,1)=y(end);
    for ind=2:n;
        DD(end,ind)=(DD(end,ind-1)-DD(end-1,ind-1))/(x(end)-x(end-ind+1));
    end
    N=[0,Ns]+DD(end,end)*poly(x(1:end-1));
end
end