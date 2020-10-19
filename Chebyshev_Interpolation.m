function P=Chebyshev_Interpolation(fun,interval,order)
k=0:order;
x=diff(interval)/2.*cos((2*k+1)./(2*(order+1))*pi)+mean(interval);
y=feval(fun,x);
P=Lagrange_Interpolation(x,y);
end