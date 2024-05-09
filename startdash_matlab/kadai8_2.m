B = readmatrix("data\csv_data_sample.csv");
time = B(:,1);
x = B(:,2);
yt = sinpi(time);
hold on

plot(time,x)
plot(time,yt)

hold off

