clear all
close all
clc

subplot(2,1,1)
L=sqrt(2)*pi;
e=0.1;
hold on
plot([0 L+e L+e 0 0],[0 0 L+e L+e 0],'b','linewidth',3)
plot([0 L-e L-e 0 0],[0 0 L-e L-e 0],'r','linewidth',3)
w=L+e;
h=sqrt(2)*(L-e-(L+e)/sqrt(2));
x=L-e-(L+e)/sqrt(2);
t=pi/4;
plot(x+[0 w*cos(t) w*cos(t)-h*sin(t) -h*sin(t) 0], ...
    [0 w*sin(t) w*sin(t)+cos(t)*h cos(t)*h 0],'k','linewidth',3)

axis equal
% axis tight
shading interp
view(2)
xlabel('$x$','interpreter','latex')
ylabel('$y$','interpreter','latex')
set(gca,'fontsize',15)

subplot(2,1,2)
M=mphload(['Stacked_square_square_rectangle.mph'],'Model');
Q=mphsolutioninfo(M);


hold on
% figure('Units','Normalized','position',[0 0.05 1/3 0.85])

U=mpheval(M,'u','t',1000);
h=trisurf(triangulation(double(U.t+1)',U.p(1,:)',U.p(2,:)',U.d1(1,:)'));
w=L+e;
h=sqrt(2)*(L-e-(L+e)/sqrt(2));
x=L-e-(L+e)/sqrt(2);
t=pi/4;
plot([0 L+e L+e 0 0],[0 0 L+e L+e 0],'b','linewidth',3)
plot(5+[0 L-e L-e 0 0],[0 0 L-e L-e 0],'r','linewidth',3)
plot(10+x+[0 w*cos(t) w*cos(t)-h*sin(t) -h*sin(t) 0], ...
    [0 w*sin(t) w*sin(t)+cos(t)*h cos(t)*h 0],'k','linewidth',3)
axis equal
axis tight
shading interp
view(2)
xlabel('$x$','interpreter','latex')
ylabel('$y$','interpreter','latex')
set(gca,'fontsize',15)
colorbar
caxis([0.8 1.3])


export_fig('C:\Users\smatw1\Dropbox\Apps\Overleaf\Parallelograms\Pictures\Stacked.png')