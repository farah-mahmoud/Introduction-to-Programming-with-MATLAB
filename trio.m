function T = trio(n, m)
x = ones(3*n, m);
x(1:n,:) =1;
x(n+1 :2*n , :) = 2;
x(2*n+1:end, :) = 3