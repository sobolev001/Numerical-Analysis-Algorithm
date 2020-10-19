function [P,P_orth,A]=Least_Square_Approximation(x0,y0,w,P_order)
%% initializing variables
P_orth=zeros(P_order+1,P_order+1);%orthogonal polynomial matrix
%iterative coefficients
Alph=zeros(1,P_order);
Bet=zeros(1,P_order-1);
A=zeros(1,P_order+1);%orthogonal polynomial coefficients
%% The 1st and 2nd Orth Poly
%Solve Polynomial of zeros order
P_orth(1,end)=1;
A(1)=sum(w.*y0)/sum(w);%coefficient
%Solve Polynomial of first order
Alph(1)=sum(w.*x0)/sum(w);
P_orth(2,end-1)=1;P_orth(2,end)=-Alph(1);
A(2)=sum(w.*y0.*polyval(P_orth(2,:),x0))/sum(w.*polyval(P_orth(2,:),x0).^2);
%% Iterative Computing Polynomial
if P_order>1
    for ind=3:P_order+1;
        Alph(ind-1)=sum(w.*x0.*polyval(P_orth(ind-1,:),x0).^2)/sum(w.*polyval(P_orth(ind-1,:),x0).^2);
        Bet(ind-2)=sum(w.*polyval(P_orth(ind-1,:),x0).^2)/sum(w.*polyval(P_orth(ind-2,:),x0).^2);
        temp_poly=conv([1,-Alph(ind-1)],P_orth(ind-1,:));
        P_orth(ind,:)=temp_poly(2:end)-Bet(ind-2)*P_orth(ind-2,:);
        A(ind)=sum(w.*y0.*polyval(P_orth(ind,:),x0))/sum(w.*polyval(P_orth(ind,:),x0).^2);
    end
end
P=A*P_orth;
end
