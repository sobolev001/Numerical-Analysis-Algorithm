function P=Lagrange_Interpolation(x,y)
if ~isequal(size(x),size(y))
    error(message('MATLAB:Lagrange_Interpolation:XYSizeMismatch'))
end
x=x(:);y=y(:);n=length(x);omega=1;P=zeros(1,n); Basic_Fun=zeros(n,n);
for i=1:n;
    omega=conv(omega,[1,-x(i)]);
end
for j=1:n;
    Basic_Fun(j,:)=deconv(omega,[1,-x(j)]);
    P=P+y(j)./polyval(Basic_Fun(j,:),x(j)).*Basic_Fun(j,:);
end