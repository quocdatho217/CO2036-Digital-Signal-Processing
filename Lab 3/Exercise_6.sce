function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    xn = matrix(xn, 1, -1);
    hn = matrix(hn, 1, -1);
    yn = conv(xn, hn);
    yorigin = xorigin + horigin - 1;
endfunction

xn = [1, -2, 3, 6]; xorigin = 3;
hn = [1, 2, 1];
horigin = 2;
[yn, yorigin] = convolution(xn, xorigin, hn, horigin);

nx = (1:length(xn)) - xorigin;
nh = (1:length(hn)) - horigin;
ny = (1:length(yn)) - yorigin;
scf(6); clf();
subplot(3, 1, 1); plot2d3(nx, xn);
title("Tin hieu vao x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 2); plot2d3(nh, hn);
title("Dap ung xung h(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 3); plot2d3(ny, yn);
title("Tin hieu tich chap y(n)");
xlabel("n"); ylabel("Bien do");
xgrid();

disp(yn, "yn =");
disp(yorigin, "yorigin =");
