n = -2:2;
xn = [2, 3, 4, 5, 6];
xneg = xn($:-1:1);
xe = 0.5 * (xn + xneg);
xo = 0.5 * (xn - xneg);
xcheck = xe + xo;

scf(18); clf();
subplot(3, 1, 1); plot2d3(n, xn);
title("x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 2); plot2d3(n, xe);
title("Thanh phan chan xe(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 3); plot2d3(n, xo);
title("Thanh phan le xo(n)");
xlabel("n"); ylabel("Bien do");
xgrid();

disp(xe, "xe ="); disp(xo, "xo =");
disp(xcheck, "xe + xo =");
