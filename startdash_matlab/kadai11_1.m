A = load("data_11\data_sample_3.mat");
B = load("data_11\data_sample_4.mat");
Ax = A.x;
Bx = B.x;
a1 = Ax(:,1);
a2 = Ax(:,2);
a3 = Ax(:,3);
a4 = Ax(:,4);
a5 = Ax(:,5);
a6 = Ax(:,6);
a7 = Ax(:,7);
a8 = Ax(:,8);
a9 = Ax(:,9);
a10 = Ax(:,10);

b1 = Bx(:,1);
b2 = Bx(:,2);
b3 = Bx(:,3);
b4 = Bx(:,4);
b5 = Bx(:,5);
b6 = Bx(:,6);
b7 = Bx(:,7);
b8 = Bx(:,8);
b9 = Bx(:,9);
b10 = Bx(:,10);

x = 1:10;
A1_ave = mean(a1);
A2_ave = mean(a2);
A3_ave = mean(a3);
A4_ave = mean(a4);
A5_ave = mean(a5);
A6_ave = mean(a6);
A7_ave = mean(a7);
A8_ave = mean(a8);
A9_ave = mean(a9);
A10_ave = mean(a10);
B1_ave = mean(b1);
B2_ave = mean(b2);
B3_ave = mean(b3);
B4_ave = mean(b4);
B5_ave = mean(b5);
B6_ave = mean(b6);
B7_ave = mean(b7);
B8_ave = mean(b8);
B9_ave = mean(b9);
B10_ave = mean(b10);
A_ave = [A1_ave A2_ave A3_ave A4_ave A5_ave A6_ave A7_ave A8_ave A9_ave A10_ave];
B_ave = [B1_ave B2_ave B3_ave B4_ave B5_ave B6_ave B7_ave B8_ave B9_ave B10_ave];

s1 = std(a1,1,"all");
s2 = std(a2,1,"all");
s3 = std(a3,1,"all");
s4 = std(a4,1,"all");
s5 = std(a5,1,"all");
s6 = std(a6,1,"all");
s7 = std(a7,1,"all");
s8 = std(a8,1,"all");
s9 = std(a9,1,"all");
s10 = std(a10,1,"all");

t1 = std(b1,1,"all");
t2 = std(b2,1,"all");
t3 = std(b3,1,"all");
t4 = std(b4,1,"all");
t5 = std(b5,1,"all");
t6 = std(b6,1,"all");
t7 = std(b7,1,"all");
t8 = std(b8,1,"all");
t9 = std(b9,1,"all");
t10 = std(b10,1,"all");


err1 = [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10];
err2 = [t1 t2 t3 t4 t5 t6 t7 t8 t9 t10];

f1 = figure;
hold on
errorbar(x,A_ave,err1,"ob",'LineWidth',2,'MarkerSize',10)
xticks([0 2 4 6 8 10])
yticks([-4 -2 0 2 4 6 8 10])
xlim([0 11])
ylim([-4 10])
xlabel('Nunber of trials')
grid on
hold off

f2 = figure;
hold on
errorbar(x,B_ave,err2,"ob",'LineWidth',2,'MarkerSize',10)
xticks([0 2 4 6 8 10])
yticks([-4 -2 0 2 4 6 8 10])
xlim([0 11])
ylim([-4 10])
xlabel('Nunber of trials')
grid on
hold off


