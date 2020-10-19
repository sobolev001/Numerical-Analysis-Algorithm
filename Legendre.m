function P=Legendre(n)
syms  x P
if (n==0);
    P=1;
elseif (n==1);
     P=x;
    else
      P=((2*n-1)*x*Legendre(n-1)-(n-1)*Legendre(n-2))/n;
    end
end

