function [L,yi]=lagrange_fit(x,y,xi)
if nargin==2
    xi=linspace(x(1),x(end),100);
elseif nargin<2
    error('Not enough input arguments.')
end
n=length(x);% number of nodes.
m=length(y);% number of function values.
if n~=m
    error('Dimensions of input vectors are not consistent.');
end
%% Main Prog
w=poly(x); % build w function.
Interp_bf=zeros(n,n);%initial interpolation basic function.
for index=1:n;
    w_ind=deconv(w,[1,-x(index)]);
    Interp_bf(index,:)=w_ind./polyval(w_ind,x(index));
end
y=y(:);
L=y'*Interp_bf;
yi=polyval(L,xi);
end