tiledlayout(1,2)
figure.Position = [100 100 500 400];
t = 0:0.1:10;

f1 = nexttile;
f1 = figure;
f1.Position = [100 100 250 400];
y = sin(t); 
plot(t,y,'LineWidth',2);
grid on
xlabel('t[s]')
ylabel('Sine wave')
xticks([0 5 ])
yticks([-1.5 -1 -0.5 0 0.5 1 1.5 ])
xlim([0 5])
ylim([-1.5 1.5])
set(groot,'DefaultAxesFontName','Times New Roman');
fontsize = 25;
h = gca;
set(h,'fontsize',fontsize);

f2 = nexttile;
f2 = figure;
f2.Position = [100 100 250 400]; 
z = cos(t);
plot(t,z,'--r','LineWidth',2);
grid on
xlabel('t[s]')
ylabel('Cosine wave')
xlim([0 5])
ylim([-1.5 1.5 ])
xticks([0 5 ])
yticks([-1.5 -1 -0.5 0 0.5 1 1.5 ])
set(groot,'DefaultAxesFontName','Times New Roman');
fontsize = 25;
h = gca;
set(h,'fontsize',fontsize);
