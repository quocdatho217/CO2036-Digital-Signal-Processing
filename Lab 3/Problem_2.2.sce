// (a) x(n-2)
n = -4:8;
m = n - 2;
ya = zeros(1, length(n));
ya(find(m >= -1 & m <= 2)) = 1;
ya(find(m >= 3 & m <= 4)) = 0.5;
scf(11); clf(); plot2d3(n, ya);
title("Problem 2.2(a): x(n-2)");
xlabel("n"); ylabel("Bien do");
xgrid();

// (b) x(4-n)
n = -4:8;
m = 4 - n;
yb = zeros(1, length(n));
yb(find(m >= -1 & m <= 2)) = 1;
yb(find(m >= 3 & m <= 4)) = 0.5;
scf(12); clf(); plot2d3(n, yb);
title("Problem 2.2(b): x(4-n)");
xlabel("n"); ylabel("Bien do");
xgrid();

// (c) x(n+2)
n = -6:6;
m = n + 2;
yc = zeros(1, length(n));
yc(find(m >= -1 & m <= 2)) = 1;
yc(find(m >= 3 & m <= 4)) = 0.5;
scf(13); clf(); plot2d3(n, yc);
title("Problem 2.2(c): x(n+2)");
xlabel("n"); ylabel("Bien do");
xgrid();

// (d) x(n)u(2-n)
n = -6:7;
m = n;
yd = zeros(1, length(n));
yd(find(m >= -1 & m <= 2)) = 1;
yd(find(m >= 3 & m <= 4)) = 0.5;
yd = yd .* bool2s(n <= 2);
scf(14); clf(); plot2d3(n, yd);
title("Problem 2.2(d): x(n)u(2-n)");
xlabel("n"); ylabel("Bien do");
xgrid();

// (e) x(n-1)delta(n-3)
n = -4:8;
m = n - 1;
ye = zeros(1, length(n));
ye(find(m >= -1 & m <= 2)) = 1;
ye(find(m >= 3 & m <= 4)) = 0.5;
ye = ye .* bool2s(n == 3);
scf(15); clf(); plot2d3(n, ye);
title("Problem 2.2(e)");
xlabel("n"); ylabel("Bien do");
xgrid();

// (f) x(n^2)
n = -5:5;
m = n.^2;
yf = zeros(1, length(n));
yf(find(m >= -1 & m <= 2)) = 1;
yf(find(m >= 3 & m <= 4)) = 0.5;
scf(16); clf(); plot2d3(n, yf);
title("Problem 2.2(f): x(n^2)");
xlabel("n"); ylabel("Bien do");
xgrid();

// Phan chan va phan le
n = -4:4;
xn = zeros(1, length(n));
xn(find(n >= -1 & n <= 2)) = 1;
xn(find(n >= 3 & n <= 4)) = 0.5;
xminus = zeros(1, length(n));
xminus(find(-n >= -1 & -n <= 2)) = 1;
xminus(find(-n >= 3 & -n <= 4)) = 0.5;
xe = 0.5 * (xn + xminus);
xo = 0.5 * (xn - xminus);
scf(17); clf();
subplot(2, 1, 1); plot2d3(n, xe);
title("Thanh phan chan cua x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(2, 1, 2); plot2d3(n, xo);
title("Thanh phan le cua x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
