ccc

subplot(1,2,1)
M=mphload(['../Comsol/Rhombus_square.mph'],'Model');
Q=mphsolutioninfo(M);


hold on
% figure('Units','Normalized','position',[0 0.05 1/3 0.85])

U=mpheval(M,'u','t',10000,'dataset','dset2','outersolnum',1);
h=trisurf(triangulation(double(U.t+1)',U.p(1,:)',U.p(2,:)',U.d1(1,:)'));
hold on
% plot(4.4*[0 1 1 0 0],4.4*[0 0 1 1 0],'k',LineWidth=3)


M=mphload(['../Comsol/Rhombus_thin.mph'],'Model');
Q=mphsolutioninfo(M);

U=mpheval(M,'u','t',10000,'dataset','dset2','outersolnum',1);
h=trisurf(triangulation(double(U.t+1)',U.p(1,:)',U.p(2,:)'-1,U.d1(1,:)'));
hold on
% plot(3.3*[0 1 1*(1+cos(0.1)) cos(0.1) 0],3.3*[0 0 1 1 0]*(sin(0.1))-1,'k',LineWidth=3)
xlabel('$x$')
ylabel('$y$')
axis equal
axis([0 7 -2 5])

view(2)

shading interp

caxis([0.7 1.3])
% colorbar
set(gca,'fontsize',12)

subplot(1,2,2)

M=mphload(['../Comsol/Rhombus_square.mph'],'Model');
Q=mphsolutioninfo(M);


hold on
% figure('Units','Normalized','position',[0 0.05 1/3 0.85])

U=mpheval(M,'u','t',10000,'dataset','dset2','outersolnum',2);
h=trisurf(triangulation(double(U.t+1)',U.p(1,:)',U.p(2,:)',U.d1(1,:)'));
hold on
% plot(4.5*[0 1 1 0 0],4.5*[0 0 1 1 0],'k',LineWidth=3)


M=mphload(['../Comsol/Rhombus_thin.mph'],'Model');
Q=mphsolutioninfo(M);

U=mpheval(M,'u','t',10000,'dataset','dset2','outersolnum',2);
h=trisurf(triangulation(double(U.t+1)',U.p(1,:)',U.p(2,:)'-1,U.d1(1,:)'));
hold on
% plot(3.5*[0 1 1*(1+cos(0.1)) cos(0.1) 0],3.5*[0 0 1 1 0]*(sin(0.1))-1,'k',LineWidth=3)
axis equal
axis([0 7 -2 5])
% 
view(2)
xlabel('$x$')
ylabel('$y$')

shading interp

caxis([0.7 1.3])

set(gca,'fontsize',12)
colorbar(gca,'Position',[0.93 0.3 0.022 0.4],'FontSize',12)


export_fig('C:\Users\Thomas Woolley\Dropbox\Apps\Overleaf\Parallelograms\Pictures\Rhombus_vs_thin_sims.png')