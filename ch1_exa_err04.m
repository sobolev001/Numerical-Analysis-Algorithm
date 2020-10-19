clc;clf;clear;
syms x;
f=exp(x);
p1=taylor(exp(x),x,'Order',1);
p2=taylor(exp(x),x,'Order',2);
p3=taylor(exp(x),x,'Order',3);
p4=taylor(exp(x),x,'Order',4);
ezplot(p1)
hold on
ezplot(p2)
ezplot(p3)
ezplot(p4)
ezplot(f)
axis([0 4 0 4])
hold off
