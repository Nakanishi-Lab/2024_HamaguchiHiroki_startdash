data = readmatrix("data\csv_data_sample.csv"); 

time = data(:, 1); 
x = data(:, 2); 
yt = sinpi(time-pi/2);
xq = 0:0.01:1;

figure


down_t = xq(1:2:end);
down_data = vq1(1:2:end);
grid on 
plot(down_t,down_data,'x','Color','g')