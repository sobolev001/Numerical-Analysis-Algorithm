clc;clear;n=2;m=1;
syms x;
c=taylor(exp(x),'order',10)
c=sym2poly(c)
[an,bm]=Pade_Appr_Fun(c,n,m)
pretty(simple(poly2sym(an)/poly2sym(bm)))