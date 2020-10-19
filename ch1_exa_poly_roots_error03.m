%%polynomial roots finding
clear;clc;p_root=1:8;
err=zeros(1,length(p_root)+1);
err(1)=0.0001;
%% similar polynomials 
pn=poly(p_root);
pn_err=pn+err;
%% good-looking format output 
pst1=poly2str(pn,'x')
pst2=poly2str(pn_err,'x')
%% roots finding
a1=roots(pn)
a2=roots(pn_err)
