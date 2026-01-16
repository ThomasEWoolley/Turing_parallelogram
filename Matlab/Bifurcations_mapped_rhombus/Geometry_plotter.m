ccc

p=[]; 
p=stanparam(p);

pde=RhombusGeom(pi/10,0.1);
p.np=pde.grid.nPoints;  p.pdeo=pde; 
u=2*ones(p.np,1);
p.u=u;

plotsol(p,1,1,1)
view(2)
axis equal

p=[]; 
p=stanparam(p);

pde=stanpdeo1D(.5,0.004); % PDE setup
p.np=pde.grid.nPoints;  p.pdeo=pde; 
u=2*ones(p.np,1);
p.u=u;

plotsol(p,1,1,1)
view(2)
axis equal
