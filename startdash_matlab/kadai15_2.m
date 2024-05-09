m = 1;
k = 1;
c = 0.5;
tspan = [0 20];
x0 = [0.1 0];
options = [];
[t ,q] = ode45 ( @sim_k , tspan ,x0 , options ,m ,k , c);
function [ dqdt ] = sim_k (t ,q ,m , k, c)
dqdt = zeros (2 ,1);

dqdt (1) = q (2);
dqdt (2) = -k/ m*q (1) -c/m*q(2) + 5*sinpi(t);
end
x = q(:,1);
plot(t,x)
grid on
xticks([0 5 10 15 20])
yticks([-2 -1.5 -1 -0.5 0 0.5 1 1.5 2 ])
xlim([0 20])
ylim([-2 2])
xlabel('t[s]')
ylabel('x[m]')
set(groot,'DefaultAxesFontName','Times New Roman');
fontsize = 25;
h = gca;
set(h,'fontsize',fontsize);