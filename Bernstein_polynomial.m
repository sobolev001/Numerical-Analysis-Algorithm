%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Bernstein polynomial
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
function y=Bernstein_polynomial(f,x,n)
y=zeros(size(x));
for ind=1:n;
y=y+feval(f,ind/n)*nchoosek(n,ind)*x.^(ind).*(1-x).^(n-ind);
end
end
