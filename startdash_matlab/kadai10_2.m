A = load("data_10\data_sample_1.mat");
B = load("data_10\data_sample_2.mat");
Ax = A.x;
Ay = A.y;
Bx = B.x;
By = B.y;
R = corrcoef(Ax,Ay);
S = corrcoef(Bx,By);