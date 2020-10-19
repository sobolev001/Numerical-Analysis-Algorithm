clc;clear;n=1;m=1;
syms x;
c=taylor(log(1+x)/x,'order',3)
c=sym2poly(c)
[an,bm]=Pade_Appr_Fun(c,n,m)
pretty(simple(poly2sym(an)/poly2sym(bm)))