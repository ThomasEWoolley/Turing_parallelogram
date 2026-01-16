function p=oosetfemops(p)
par=p.u(p.nu+1:end);
% L=par(1);
% Du=par(2);Dv=par(3);
% alpha=par(4);
% beta=par(5);
theta=par(6);

gr=p.pdeo.grid;
c=[1 -cos(theta);-cos(theta) 1];
[p.mat.K,M,~]=p.pdeo.fem.assema(p.pdeo.grid,c,1,1); % FEM/mass matrices
p.mat.M=kron([[1,0];[0,1]],M);
% mass matrix adaption for the problem, as it is a system

end 
