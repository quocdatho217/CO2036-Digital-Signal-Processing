function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    x1n = matrix(x1n, 1, -1);
    x2n = matrix(x2n, 1, -1);
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    nmin = min([n1, n2]);
    nmax = max([n1, n2]);

    a = zeros(1, nmax - nmin + 1);
    b = zeros(1, nmax - nmin + 1);
    a(n1 - nmin + 1) = x1n;
    b(n2 - nmin + 1) = x2n;

    yn = a .* b;
    yorigin = 1 - nmin;
endfunction

x1n = [0, 1, 3, -2]; x1origin = 1;
x2n = [1, 1, 2, 3];
x2origin = 2;
[yn, yorigin] = multi(x1n, x1origin, x2n, x2origin);

n1 = (1:length(x1n)) - x1origin;
n2 = (1:length(x2n)) - x2origin;
ny = (1:length(yn)) - yorigin;
scf(5); clf();
subplot(3, 1, 1); plot2d3(n1, x1n);
title("x1(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 2); plot2d3(n2, x2n);
title("x2(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 3); plot2d3(ny, yn);
title("y(n) = x1(n) .* x2(n)");
xlabel("n"); ylabel("Bien do");
xgrid();

disp(yn, "yn =");
disp(yorigin, "yorigin =");
