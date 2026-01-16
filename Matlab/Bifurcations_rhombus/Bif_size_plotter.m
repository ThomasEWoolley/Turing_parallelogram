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

%%
close all
% plot(Bif_Length,Bif_diag,Bif_Length,Bif_Length)
tiledlayout('flow')
nexttile
plot(Bif_theta,Bif_diag)
xlabel('$\theta$')
ylabel('Diag')
axis equal
axis tight

nexttile
plot(Bif_theta,Bif_Length,Bif_theta,(sqrt(2)*pi)./(sin(Bif_theta)))
xlabel('$\theta$')
ylabel('$L+L\cos(\theta)$')
ylim([0,7])
% axis equal
% axis tight

nexttile
plot(Bif_theta,Bif_L,Bif_theta,(sqrt(2)*pi)./(sin(Bif_theta)))
xlabel('$\theta$')
ylabel('$L$')
ylim([0,7])
% axis equal
% axis tight

nexttile
plot(Bif_theta,Bif_Area)
xlabel('$\theta$')
ylabel('Area')
% axis equal
% axis tight


%%
figure
% plot(Bif_Length,Bif_diag,Bif_Length,Bif_Length)
tiledlayout('flow')


for k = 1:10:length(homFolders)
    x=[0 Bif_L(k) Bif_L(k)*(1+cos(Bif_theta(k))) Bif_L(k)*(cos(Bif_theta(k))) 0]; 
    y=[0 0 Bif_L(k)*sin(Bif_theta(k)) Bif_L(k)*sin(Bif_theta(k)) 0];
    % nexttile
    hold on
    plot(x,y)
    xlabel('$\theta$')
    ylabel('Diag')
    axis equal
    axis tight
end

%%
figure
tiledlayout('flow')

nexttile
plot(Bif_theta,Bif_L,Bif_theta,(sqrt(2)*pi)./(sin(Bif_theta)))
hold on
th=linspace(0,pi/2);
E1=sqrt(2)*pi*sqrt((1-8*cos(Bif_theta)/pi^2)./sin(Bif_theta).^2);
E2=2*sqrt(6)*sqrt((1-cos(Bif_theta))./sin(Bif_theta).^2);
plot(Bif_theta,E1,Bif_theta,E2)
plot(0,sqrt(2)*pi/2,'o')
xlabel('$\theta$')
ylabel('$L$')
ylim([0,7])

nexttile
plot(Bif_theta,Bif_Length)

hold on
th=linspace(0,pi/2);
E1=sqrt(2)*pi*sqrt((1-8*cos(Bif_theta)/pi^2)./sin(Bif_theta).^2);
E2=2*sqrt(6)*sqrt((1-cos(Bif_theta))./sin(Bif_theta).^2);
plot(Bif_theta,E1.*(1+cos(Bif_theta)),Bif_theta,E2.*(1+cos(Bif_theta)))
plot(0,sqrt(2)*pi,'o')
xlabel('$\theta$')
ylabel('$L+L\cos(\theta)$')
ylim([0,7])
