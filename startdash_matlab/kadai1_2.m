A = [1 2 3 4 ];
B = [5 6 7 8 ];
C1 = [3 4 5 6 ];
C = transpose(C1);
Bt = transpose(B);
ABt = dot(A,Bt);
AC = dot(A,C);
k = 1 : 10;
a = zeros(size(k));
for l = 1 : numel(k)
    a(l) = k(l);
end
m = 1:20;
n = zeros (size(m));
for l = 1 : numel(m)
    n(l) = 2.*m(l);
    if n(l) == 20
        break
    end

end
n;

