A = load("data_10\data_sample_1.mat");
B = load("data_10\data_sample_2.mat");
f1 = figure;
grid on
C = polyfit(A.x,A.y,1);
Cx = C(1,1);
Cy = C(1,2);
hold on
plot(A.x,A.y,'ob',LineWidth=2);
fplot(@(x) Cx*x+Cy,'-r',LineWidth=2)
xticks([0 0.2 0.4 0.6 0.8 1])
yticks([0 0.5 1 1.5 2 2.5 3])
xlim([0 1])
ylim([0 3])
xlabel('x')
ylabel('y')

f2 = figure;
D = polyfit(B.x,B.y,1);
Dx = D(1,1);
Dy = D(1,2);
grid on
hold on 
plot(B.x,B.y,'ob',LineWidth=2);
fplot(@(x) Dx*x+Dy,'-r',LineWidth=2)
xticks([0 0.2 0.4 0.6 0.8 1])
yticks([0 5 10 15])
xlim([0 1])
ylim([0 15])
xlabel('x')
ylabel('y')
