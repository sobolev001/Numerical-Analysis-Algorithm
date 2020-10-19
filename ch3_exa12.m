clc;clear;n=3;m=n;
syms x;
c=taylor(log(1+x),'order',7)
c=sym2poly(c)
[an,bm]=Pade_Appr_Fun(c,n,m)
pretty(simple(poly2sym(an)/poly2sym(bm)))
