ccc
n=10;
theta=0.1;
[u,v]=meshgrid(linspace(0,1,n),linspace(0,1,n));
subplot(1,2,1)
plot(u,v,'.')
hold on

x=u+v*cos(theta)/sin(theta);
y=v;

plot(x,y,'.')
axis equal

subplot(1,2,2)
plot(u,v,'.')
hold on
x=u+v*cos(theta);
y=v*sin(theta);

plot(x,y,'.')
axis equal
