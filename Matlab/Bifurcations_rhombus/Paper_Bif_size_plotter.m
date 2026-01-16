ccc
% Get list of all folders in the current directory
allItems = dir();
homFolders = allItems([allItems.isdir] & startsWith({allItems.name}, 'Hom'));

% Loop through each 'Hom*' folder
for k = 1:length(homFolders)
    folderName = homFolders(k).name;
    filePath = ['.\',folderName,'\bpt1.mat'];

    if exist(filePath, 'file')
        load(filePath);

        Bif_theta(k)=p.u(end);
        Bif_L(k)=p.u(end-5);
        Bif_Length(k)=p.u(end-5)*(1+cos(p.u(end)));
        Bif_diag(k)=sqrt((p.u(end-5)*(1+cos(p.u(end)))).^2+(p.u(end-5)*sin(p.u(end))).^2);
        Bif_Area(k)=p.u(end-5)^2*sin(p.u(end));


    else
        fprintf('File bpt1.mat not found in %s\n', folderName);
    end
end
Bif_theta1=Bif_theta;
Bif_L1=Bif_L;
Bif_Length1=Bif_Length;
Bif_diag1=Bif_diag;
Bif_Area1=Bif_Area;
%%
clearvars -except Bif_theta1 Bif_L1 Bif_Length1 Bif_Area1 Bif_diag1

% Get list of all folders in the current directory
allItems = dir('..\Bifurcations_mapped_rhombus\');
homFolders = allItems([allItems.isdir] & startsWith({allItems.name}, 'Hom'));
%%
% Loop through each 'Hom*' folder
for k = 1:length(homFolders)
    folderName = homFolders(k).name;
    filePath = ['..\Bifurcations_mapped_rhombus\',folderName,'\bpt1.mat'];

    if exist(filePath, 'file')
        load(filePath);

        Bif_theta(k)=p.u(end);
        Bif_L(k)=p.u(end-5);
        Bif_Length(k)=p.u(end-5)*(1+cos(p.u(end)));
        Bif_diag(k)=sqrt((p.u(end-5)*(1+cos(p.u(end)))).^2+(p.u(end-5)*sin(p.u(end))).^2);
        Bif_Area(k)=p.u(end-5)^2*sin(p.u(end));


    else
        fprintf('File bpt1.mat not found in %s\n', folderName);
    end
end
Bif_theta2=Bif_theta;
Bif_L2=Bif_L;
Bif_Length2=Bif_Length;
Bif_diag2=Bif_diag;
Bif_Area2=Bif_Area;
clearvars -except Bif_theta1 Bif_L1 Bif_Length1 Bif_theta2 Bif_L2 Bif_Length2 Bif_Area1 Bif_Area2  Bif_diag1  Bif_diag2

%%
close all

figure
plot(Bif_theta1,Bif_L1,'linewidth',3)%,Bif_theta,(sqrt(2)*pi)./(sin(Bif_theta)))
hold on
plot(Bif_theta2,Bif_L2,'o','linewidth',1)
E1=sqrt(2)*pi*sqrt((1-8*cos(Bif_theta1)/pi^2)./sin(Bif_theta1).^2);
E2=2*sqrt(6)*sqrt((1-cos(Bif_theta1))./sin(Bif_theta1).^2);
plot(Bif_theta1,E1,Bif_theta1,E2,'linewidth',3)
yline(sqrt(2)*pi,'--k','linewidth',3)
yline(sqrt(2)*pi/2,'--k','linewidth',3)
xlabel('$\theta$')
ylabel('$L$')
ylim([2,5])
xlim([0 pi/2])

legend('$L_{rhombus}(\theta)$ (unmapped space)','$L_{rhombus}(\theta)$ (mapped space)','$L_{C1}(\theta)$','$L_{C2}(\theta)$')
set(gca,'fontsize',15)
export_fig('C:\Users\Thomas Woolley\Dropbox\Apps\Overleaf\Parallelograms\Pictures\Rhombus_L.png','-r300')
%%
figure
plot(Bif_theta1,Bif_Length1,'LineWidth',3)

hold on
plot(Bif_theta2,Bif_Length2,'o','linewidth',1)
plot(Bif_theta1,E1.*(1+cos(Bif_theta1)),Bif_theta1,E2.*(1+cos(Bif_theta1)),'linewidth',3)
% E3=sqrt(4*pi*Bif_theta1./sin(Bif_theta1));
% plot(Bif_theta1,E3.*(1+cos(Bif_theta1)),'k','linewidth',3)
yline(sqrt(2)*pi,'--k','linewidth',3)
yline(2*sqrt(2)*pi,'--k','linewidth',3)
xlabel('$\theta$')
ylabel('$L_x=L(1+\cos(\theta))$')
ylim([4,9])
xlim([0 pi/2])
set(gca,'fontsize',15)
export_fig('C:\Users\Thomas Woolley\Dropbox\Apps\Overleaf\Parallelograms\Pictures\Rhombus_Lcos.png','-r300')

%%
figure
plot(Bif_theta1,Bif_Area1,'linewidth',3)

hold on
plot(Bif_theta2,Bif_Area2,'o','linewidth',1)
plot(Bif_theta1,E1.^2.*(sin(Bif_theta1)),Bif_theta1,E2.^2.*(sin(Bif_theta1)),'linewidth',3)
% yline(sqrt(2)*pi,'--k','linewidth',3)
% yline(2*sqrt(2)*pi,'--k','linewidth',3)
xlabel('$\theta$')
ylabel('$A=L^2\sin(\theta)$')
ylim([0 20])
xlim([0 pi/2])
set(gca,'fontsize',15)
export_fig('C:\Users\Thomas Woolley\Dropbox\Apps\Overleaf\Parallelograms\Pictures\Rhombus_A.png','-r300')


%%
figure
plot(Bif_theta1,Bif_diag1,'linewidth',3)

hold on
plot(Bif_theta2,Bif_diag2,'o','linewidth',1)
% sqrt((E1*(1+cos(Bif_theta1))).^2+(E1*sin(Bif_theta1)).^2);
plot(Bif_theta1,sqrt((E1.*(1+cos(Bif_theta1))).^2+(E1.*sin(Bif_theta1)).^2),...
    Bif_theta1,sqrt((E2.*(1+cos(Bif_theta1))).^2+(E2.*sin(Bif_theta1)).^2),'linewidth',3)
yline(2*pi,'--k','linewidth',3)
% yline(2*sqrt(2)*pi,'--k','linewidth',3)
xlabel('$\theta$')
ylabel('$L_d=\sqrt{2}L\sqrt{1+\cos(\theta)}$')
ylim([6 7])
xlim([0 pi/2])
set(gca,'fontsize',15)
export_fig('C:\Users\Thomas Woolley\Dropbox\Apps\Overleaf\Parallelograms\Pictures\Rhombus_d.png','-r300')

%%
% figure
% plot(Bif_theta1,Bif_Area1,'b','linewidth',3)
% 
% hold on
% thetac=atan(sqrt(-pi^4 + 24*pi^2 - 128)/(12-pi^2));
% Bif_theta1l=Bif_theta1(Bif_theta1<thetac);
% Bif_theta1r=Bif_theta1(Bif_theta1>thetac);
% B1r=sqrt(2)*pi*sqrt((1-8*cos(Bif_theta1r)/pi^2)./sin(Bif_theta1r).^2);
% B2l=2*sqrt(6)*sqrt((1-cos(Bif_theta1l))./sin(Bif_theta1l).^2);
% plot(Bif_theta1,[B2l,B1r].^2.*sin(Bif_theta1),'r','linewidth',3)
% plot(Bif_theta1,4*pi*Bif_theta1,'k','linewidth',3)
% xlabel('$\theta$')
% ylabel('$A=L^2\sin(\theta)$')
% ylim([0 20])
% xlim([0 pi/2])
% set(gca,'fontsize',15)
% export_fig('C:\Users\Thomas Woolley\Dropbox\Apps\Overleaf\Parallelograms\Pictures\Area_vs_theta.png')
%%
clc
figure
lim=51;
maxL=[B2l,B1r];
plot(Bif_theta1,4*pi*Bif_theta1-Bif_Area1)
hold on
plot(Bif_theta1,maxL.^2.*sin(Bif_theta1)-Bif_Area1)

trapz(Bif_theta1(1:lim),4*pi*Bif_theta1(1:lim)-Bif_Area1(1:lim))
trapz(Bif_theta1(1:lim),maxL(1:lim).^2.*sin(Bif_theta1(1:lim))-Bif_Area1(1:lim))

max(4*pi*Bif_theta1-Bif_Area1)
max([B2l,B1r].^2.*sin(Bif_theta1)-Bif_Area1)

%%
clc
figure
E3=sqrt(4*pi*Bif_theta1./sin(Bif_theta1));
plot(Bif_theta1,E3-Bif_L1)
hold on
plot(Bif_theta1,maxL-Bif_L1)

2/pi*trapz(Bif_theta1(1:lim),E3(1:lim)-Bif_L1(1:lim))
2/pi*trapz(Bif_theta1(1:lim),maxL(1:lim)-Bif_L1(1:lim))

max(E3-Bif_L1)
max(maxL-Bif_L1)