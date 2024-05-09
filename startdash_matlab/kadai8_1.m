B = readmatrix("data\csv_data_sample.csv");
time = B(:,1);
t = diff(time);
plot(t)