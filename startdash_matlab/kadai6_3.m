[x,y] = meshgrid(-10:10);
z = -x.^2+10*y;
surface(x,y,z)
xlabel('x')
ylabel('y')
zlabel('z')
xticks([-10 0 10])
yticks([-10 0 10])
zticks([-200 -100 0 100])
view(3)
grid on