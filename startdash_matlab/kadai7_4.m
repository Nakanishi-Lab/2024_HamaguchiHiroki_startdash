r = 'data\csv_data_sample.csv';
[time,x,y,z] = data_read(r);

function [time,x,y,z] = data_read(r)
    time = readmatrix(r,'Range','A2:A102');
    x = readmatrix(r,'Range','B2:B102');
    y = readmatrix(r,'Range','C2:C102');
    z = readmatrix(r,'Range','D2:D102');
end

