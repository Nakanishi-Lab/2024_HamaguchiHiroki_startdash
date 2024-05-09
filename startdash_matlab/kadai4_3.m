hold on
x = rand(1,10);
y = rand(1,10);
t = 1:10 ;
plot(t,x,'ob','LineWidth',3,'MarkerSize',15);
plot(t,y,'^r','LineWidth',3,'MarkerSize',15,'MarkerFaceColor','r');
xlim([0 11])
ylim([0 1])
grid on
xticks([0 2 4 6 8 10])
yticks([0 0.2 0.4 0.6 0.8 1])
set(groot,'DefaultAxesFontName','Times New Roman');
fontsize = 25;
h = gca;
set(h,'fontsize',fontsize);
hold off