function T = Chebyshev_Polynomial(n)
syms x T;
if(n==0)
    T=1;
else
    if(n==1)
        T=x;
    else 
        T=2*x*Chebyshev_Polynomial(n-1)-Chebyshev_Polynomial(n-2);
    end
end
end