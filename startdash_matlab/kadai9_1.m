
data = readmatrix("data\csv_data_sample.csv"); 

time = data(:, 1); 
x = data(:, 2); 
yt = sinpi(time-pi/2);
xq = 0:0.01:1;
figure
vq1 = interp1(time,yt,xq);
plot(time,yt,'o',xq,vq1,':.');

