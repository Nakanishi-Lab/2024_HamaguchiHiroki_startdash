t = 0:0.1:10;
f1 = figure;
y = sin(t); 
plot(t,y,'LineWidth',2);
grid on
xlabel('t[s]')
ylabel('Sine wave')
xticks([0 1 2 3 4 5 ])
yticks([-1.5 -1 -0.5 0 0.5 1 1.5 ])
xlim([0 5])
ylim([-1.5 1.5])
set(groot,'DefaultAxesFontName','Times New Roman');
fontsize = 25;
h = gca;
set(h,'fontsize',fontsize);
print('-f1','figure1','-deps')

f2 = figure;
z = cos(t);
plot(t,z);
xlabel('t[s]')
ylabel('Cosine wave')
xlim([0 5])
ylim([-1.5 1.5])

f3 = figure;
y = sin(t);
plot(t,y,'b'),grid on;

hold on

z = cos(t);
plot(t,z,'--r');
xlim([0 5])
xticks([0 1 2 3 4 5 ])
ylim([-1.5 2])
label1 = '$\theta$';
label2 = '$\dot{\theta}$';
str = ["$\theta$","$\dot{\theta}$[rad/s]"];
label3 = join(str,", ");
xlabel('t[s]')
ylabel(label3,'Interpreter','latex')


hold off
legend(label1 , label2,'Interpreter','latex' )