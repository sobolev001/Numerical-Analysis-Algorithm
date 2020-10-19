syms t h
f=t*(h-t)*(h/2-t);
df=diff(f,t)
x=solve(df==0,t,[0,h/2])
