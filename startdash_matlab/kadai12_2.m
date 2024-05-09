m = 1;
k = 1;
tspan = [0 20];
x0 = [0.15 0];
options = [];
[t ,q] = ode45 ( @sim_k , tspan ,x0 , options ,m ,k );
function [ dqdt ] = sim_k (~ ,q ,m , k)
dqdt = zeros (2 ,1);
dqdt (1) = q (2);
dqdt (2) = -k/ m*q (1);
end
x = q(:,1);
plot(t,x)
grid on
xticks([0 5 10 15 20])
yticks([-0.1 -0.05 0 0.05 0.1 0.15])
xlim([0 20])
ylim([-0.15 0.15])
xlabel('t')
ylabel('x')