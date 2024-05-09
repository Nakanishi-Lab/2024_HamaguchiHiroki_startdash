t = 0:0.1:10;
f1 = figure;
f1.Position = [100 100 250 400];
y = sin(t); 
plot(t,y,'LineWidth',2);
grid on
xlabel('t[s]')
ylabel('Sine wave')
xticks([0 5 ])
yticks([ -1  0  1  ])
xlim([0 5])
ylim([-1.5 1.5])
set(groot,'DefaultAxesFontName','Times New Roman');
fontsize = 25;
h = gca;
set(h,'fontsize',fontsize);





