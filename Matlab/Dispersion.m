ccc
k=linspace(0,10);
dp=-(1/2)*k.^2-1/10+(1/10)*sqrt(25*k.^4-1090*k.^2-99);
dn=-(1/2)*k.^2-1/10-(1/10)*sqrt(25*k.^4-1090*k.^2-99);

% d=10;
% a=0.1;
% b=0.9;
% 
% dp=(-a^3-3*a^2*b-3*a*b^2-a*k.^2-b^3-b*k.^2-a+b+sqrt(-4*a^4*d*k.^2-16*a^3*b*d*k.^2-24*a^2*b^2*d*k.^2-16*a*b^3*d*k.^2-4*b^4*d*k.^2+a^6+6*a^5*b+15*a^4*b^2-2*a^4*k.^2+20*a^3*b^3-8*a^3*b*k.^2+15*a^2*b^4-12*a^2*b^2*k.^2+a^2*k.^4+6*a*b^5-8*a*b^3*k.^2+2*a*b*k.^4+b^6-2*b^4*k.^2+b^2*k.^4-2*a^4-12*a^3*b-24*a^2*b^2+2*a^2*k.^2-20*a*b^3-6*b^4-2*b^2*k.^2+a^2-2*a*b+b^2))/(a+b)
% dn=-(a^3+3*a^2*b+3*a*b^2+a*k.^2+b^3+b*k.^2+sqrt(-4*a^4*d*k.^2-16*a^3*b*d*k.^2-24*a^2*b^2*d*k.^2-16*a*b^3*d*k.^2-4*b^4*d*k.^2+a^6+6*a^5*b+15*a^4*b^2-2*a^4*k.^2+20*a^3*b^3-8*a^3*b*k.^2+15*a^2*b^4-12*a^2*b^2*k.^2+a^2*k.^4+6*a*b^5-8*a*b^3*k.^2+2*a*b*k.^4+b^6-2*b^4*k.^2+b^2*k.^4-2*a^4-12*a^3*b-24*a^2*b^2+2*a^2*k.^2-20*a*b^3-6*b^4-2*b^2*k.^2+a^2-2*a*b+b^2)+a-b)/(a+b)

plot(k,dp)
hold on
plot(k,dn)
ylim([-40 10])

%%
ccc
k=linspace(0,2,500);

a=1/10;
b=9/10;
d=10;

dp=(1/2)*(-a*d*k.^2-b*d*k.^2-a^3-3*a^2*b-3*a*b^2-a*k.^2-b^3-b*k.^2-a+b+sqrt(a^2*d^2*k.^4+2*a*b*d^2*k.^4+b^2*d^2*k.^4+2*a^4*d*k.^2+8*a^3*b*d*k.^2+12*a^2*b^2*d*k.^2-2*a^2*d*k.^4+8*a*b^3*d*k.^2-4*a*b*d*k.^4+2*b^4*d*k.^2-2*b^2*d*k.^4+a^6+6*a^5*b+15*a^4*b^2-2*a^4*k.^2+20*a^3*b^3-8*a^3*b*k.^2+15*a^2*b^4-12*a^2*b^2*k.^2+a^2*k.^4+6*a*b^5-8*a*b^3*k.^2+2*a*b*k.^4+b^6-2*b^4*k.^2+b^2*k.^4-2*a^2*d*k.^2+2*b^2*d*k.^2-2*a^4-12*a^3*b-24*a^2*b^2+2*a^2*k.^2-20*a*b^3-6*b^4-2*b^2*k.^2+a^2-2*a*b+b^2))/(a+b);
dn=-(1/2)*(a*d*k.^2+b*d*k.^2+a^3+3*a^2*b+3*a*b^2+a*k.^2+b^3+b*k.^2+sqrt(a^2*d^2*k.^4+2*a*b*d^2*k.^4+b^2*d^2*k.^4+2*a^4*d*k.^2+8*a^3*b*d*k.^2+12*a^2*b^2*d*k.^2-2*a^2*d*k.^4+8*a*b^3*d*k.^2-4*a*b*d*k.^4+2*b^4*d*k.^2-2*b^2*d*k.^4+a^6+6*a^5*b+15*a^4*b^2-2*a^4*k.^2+20*a^3*b^3-8*a^3*b*k.^2+15*a^2*b^4-12*a^2*b^2*k.^2+a^2*k.^4+6*a*b^5-8*a*b^3*k.^2+2*a*b*k.^4+b^6-2*b^4*k.^2+b^2*k.^4-2*a^2*d*k.^2+2*b^2*d*k.^2-2*a^4-12*a^3*b-24*a^2*b^2+2*a^2*k.^2-20*a*b^3-6*b^4-2*b^2*k.^2+a^2-2*a*b+b^2)+a-b)/(a+b);
% figure
plot(k,dp,'k','linewidth',3)
hold on
plot(k,dn,'k','linewidth',3)
plot(1/sqrt(2),0,'ro','linewidth',3)
text(1/sqrt(2)+.1/2,.2,'$\mu_+$','fontsize',15)

plot(1.5,0,'bo','linewidth',3)
text(1.5-0.1,.2,'$\leftarrow k_1(L)$','fontsize',15)
yline(0)
ylim([-1 1])
xlim([0,2])
xlabel('$\mu$')
ylabel('$\lambda$')
export_fig('C:\Users\smatw1\Dropbox\Apps\Overleaf\Parallelograms\Pictures\Dispersion.png','-r300')