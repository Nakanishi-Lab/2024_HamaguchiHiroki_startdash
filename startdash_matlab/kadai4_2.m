for i = 1:5
    x = rand(1,10);
    t = 1:10 ;
    plot(t,x,'ob','LineWidth',3,'MarkerSize',15);
    set(groot,'DefaultAxesFontName','Times New Roman');
    fontsize = 25;
    h = gca;
    set(h,'fontsize',fontsize);
    xlim([0 11])
    ylim([0 1])
    grid on
    yticks([0 0.2 0.4 0.6 0.8 1])
    xticks([0 2 4 6 8 10])
    extention = '.eps';
    filename = [num2str(i),extention];
    saveas(gcf,filename,'epsc')
end

