function [P,P_orth,A]=LSCF(x0,y0,w,P_order)
%% Check inputs
if nargin < 4
  P_order = 1;
  if nargin < 3
    w = ones(size(x0));
    if nargin < 2
      x0=1:length(y0);
      if nargin < 1
        error(message('MATLAB:ode45:NotEnoughInputs'));
      end  
    end
  end
end
%% initializing variables
P=zeros(1,P_order+1); %curve fitting polynomial
P_orth=zeros(P_order+1,P_order+1); %orthogonal polynomial matrix
A=zeros(1,P_order+1); %orthogonal polynomial coefficients
Alph=0;
Bet=0;
if P_order==0;
    %% The 1st curve fitting
    P_orth(1,end)=1;
    A(1)=sum(w.*y0)/sum(w);%coefficient
    P=A*P_orth;
elseif P_order==1;
    %% The 2nd curve fitting
    Alph=sum(w.*x0)/sum(w);
    %Solve Polynomial of first order
    P_orth(1,end)=1;
    P_orth(2,end-1)=1;P_orth(2,end)=-Alph;
    A(1)=sum(w.*y0)/sum(w);%coefficient
    A(2)=sum(w.*y0.*polyval(P_orth(2,:),x0))/sum(w.*polyval(P_orth(2,:),x0).^2);
    P=A*P_orth;
else
    %% recursion algorithm
    [PB,PB_orth,AB]=LSCF(x0,y0,w,P_order-1);
    P_orth(1:end-1,2:end)=PB_orth;
    A(1:end-1)=AB;
    Alph=sum(w.*x0.*polyval(P_orth(end-1,:),x0).^2)/sum(w.*polyval(P_orth(end-1,:),x0).^2);
    Bet=sum(w.*polyval(P_orth(end-1,:),x0).^2)/sum(w.*polyval(P_orth(end-2,:),x0).^2);
    temp_poly=conv([1,-Alph],P_orth(end-1,:));
    P_orth(end,:)=temp_poly(2:end)-Bet*P_orth(end-2,:);
    A(end)=sum(w.*y0.*polyval(P_orth(end,:),x0))/sum(w.*polyval(P_orth(end,:),x0).^2);
    P=A*P_orth;
end
end
