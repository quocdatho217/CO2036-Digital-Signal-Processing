function v = xtest26(m)
    v = bool2s(m >= 0 & m <= 3);
endfunction

n = -6:7; n0 = 2;
Txshift = xtest26(n.^2 - n0);
yshift = xtest26((n - n0).^2);
disp(Txshift == yshift, "T[x(n-n0)] == y(n-n0):");

// (b)
function v = x26(m)
    v = bool2s(m >= 0 & m <= 3);
endfunction

n = -6:7;
xn = x26(n);
yn = x26(n.^2);
y1n = x26((n - 2).^2);
x2n = x26(n - 2);
y2n = x26(n.^2 - 2);

scf(19); clf();
subplot(3, 2, 1); plot2d3(n, xn);
title("x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 2, 2); plot2d3(n, yn);
title("y(n) = x(n^2)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 2, 3); plot2d3(n, y1n);
title("y1(n) = y(n-2)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 2, 4); plot2d3(n, x2n);
title("x2(n) = x(n-2)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 2, 5); plot2d3(n, y2n);
title("y2(n) = T[x2(n)]");
xlabel("n"); ylabel("Bien do");
xgrid();

disp(y1n, "y(n-2) ="); disp(y2n, "y2(n) =");

// (c) y(n) = x(n) - x(n-1)
n = -3:8;
x0 = bool2s(n >= 0 & n <= 3);
xminus1 = bool2s(n - 1 >= 0 & n - 1 <= 3);
y = x0 - xminus1;

y_delay = bool2s(n - 2 >= 0 & n - 2 <= 3) ...
        - bool2s(n - 3 >= 0 & n - 3 <= 3);
x2 = bool2s(n - 2 >= 0 & n - 2 <= 3);
Tx2 = x2 - bool2s(n - 3 >= 0 & n - 3 <= 3);

scf(20); clf();
subplot(2, 1, 1); plot2d3(n, y_delay);
title("y(n-2)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(2, 1, 2); plot2d3(n, Tx2);
title("T[x(n-2)]");
xlabel("n"); ylabel("Bien do");
xgrid();
disp(y_delay == Tx2, "y(n-2) == T[x(n-2)]:");

// (d) y(n) = n*x(n)
n = -3:8;
y0 = bool2s(n >= 0 & n <= 3);
y = n .* y0;
x2 = bool2s(n - 2 >= 0 & n - 2 <= 3);
y_delay = (n - 2) .* x2;
Tx2 = n .* x2;

scf(21); clf();
subplot(3, 1, 1); plot2d3(n, y);
title("y(n) = n*x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 2); plot2d3(n, y_delay);
title("y(n-2)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 3); plot2d3(n, Tx2);
title("T[x(n-2)]");
xlabel("n"); ylabel("Bien do");
xgrid();
disp(y_delay == Tx2, "y(n-2) == T[x(n-2)]:");
