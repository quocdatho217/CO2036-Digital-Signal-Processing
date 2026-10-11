function [yn, yorigin] = fold(xn, xorigin)
    xn = matrix(xn, 1, -1);
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;
endfunction

xn = [1, -2, 3, 6];
xorigin = 3;
[yn, yorigin] = fold(xn, xorigin);

nx = (1:length(xn)) - xorigin;
ny = (1:length(yn)) - yorigin;
scf(3); clf();
subplot(2, 1, 1); plot2d3(nx, xn);
title("Tin hieu vao x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(2, 1, 2); plot2d3(ny, yn);
title("Tin hieu dao y(n)");
xlabel("n"); ylabel("Bien do");
xgrid();

disp(yn, "yn =");
disp(yorigin, "yorigin =");
