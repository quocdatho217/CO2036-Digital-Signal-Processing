// Lab 2 - Exercise 5
// Even and odd components

clc;
clear;
clf();

n = -1:1;
x = [1, 3, -2];

x_reverse = x(length(x):-1:1);

xe = (x + x_reverse) / 2;
xo = (x - x_reverse) / 2;

disp(xe, "Thanh phan chan xe =");
disp(xo, "Thanh phan le xo =");

subplot(3,1,1);
plot2d3(n, x);
title("Tin hieu x(n)");
xlabel("n");
ylabel("x(n)");

subplot(3,1,2);
plot2d3(n, xo);
title("Thanh phan le x_o(n)");
xlabel("n");
ylabel("x_o(n)");

subplot(3,1,3);
plot2d3(n, xe);
title("Thanh phan chan x_e(n)");
xlabel("n");
ylabel("x_e(n)");
