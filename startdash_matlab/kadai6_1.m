t = 0:0.01:10;
p = pi;
x = cos(p*t);
y = sin(p*t);
z = sin(p/3 * t);
plot3(x,y,z,'ob','LineWidth',2)
xlabel('x')
ylabel('y')
zlabel('z')
grid on
set(groot,'DefaultAxesFontName','Times New Roman');
yticks([-1 0 1])
xticks([-1 0 1])
zticks([-1 0 1])