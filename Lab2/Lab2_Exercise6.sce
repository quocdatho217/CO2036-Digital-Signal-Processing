// Lab 2 - Exercise 6
// Addition of two discrete-time signals

clc;
clear;
clf();

n = -1:3;

x1 = [0 0 1 3 -2];
x2 = [0 1 2 3 0];

y = x1 + x2;

subplot(3,1,1);
plot2d3(n, x1);
title("Tin hieu x_1(n)");
xlabel("n");
ylabel("x_1(n)");

subplot(3,1,2);
plot2d3(n, x2);
title("Tin hieu x_2(n)");
xlabel("n");
ylabel("x_2(n)");

subplot(3,1,3);
plot2d3(n, y);
title("Tin hieu y(n) = x_1(n) + x_2(n)");
xlabel("n");
ylabel("y(n)");
