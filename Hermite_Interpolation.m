function y=Hermite_Interpolation(x,f,df)
n=length(x);%count the numbers
x_h=zeros(1,2*n);% initialized numbers set
H_Tab=zeros(2*n,2*n);%initialized divided difference table
for s=1:n;
    x_h(2*s-1)=x(s);x_h(2*s)=x(s);%evalue the numbers set
    H_Tab(2*s,1)=f(s);H_Tab(2*s-1,1)=f(s);%evalue the first column of the table
    %evalue the second column of the table
    H_Tab(2*s,2)=df(s);
    if (2*s-1)~=1;
        H_Tab(2*s-1,2)=(H_Tab(2*s-1,1)-H_Tab(2*s-2,1))/(x_h(2*s-1)-x_h(2*s-2));
    end
end
%evalue the rest of column of the table
for k=3:2*n;
    for m=k:2*n;
        H_Tab(m,k)=(H_Tab(m,k-1)-H_Tab(m-1,k-1))/(x_h(m)-x_h(m-k+1));
    end
end
y=diag(H_Tab);
end