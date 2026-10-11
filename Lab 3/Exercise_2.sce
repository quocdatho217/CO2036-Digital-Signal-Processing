function [yn, yorigin] = advance(xn, xorigin, k)
    if k < 0 then
        error("k must be nonnegative");
    end
    yn = matrix(xn, 1, -1);
    yorigin = xorigin + k;
endfunction

xn = [1, -2, 3, 6];
xorigin = 3;
k = 1;
[yn, yorigin] = advance(xn, xorigin, k);

nx = (1:length(xn)) - xorigin;
ny = (1:length(yn)) - yorigin;
scf(2); clf();

subplot(2, 1, 1); plot2d3(nx, xn);
title("Tin hieu vao x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(2, 1, 2); plot2d3(ny, yn);
title("Tin hieu som y(n)");
xlabel("n"); ylabel("Bien do");
xgrid();

disp(yn, "yn =");
disp(yorigin, "yorigin =");
