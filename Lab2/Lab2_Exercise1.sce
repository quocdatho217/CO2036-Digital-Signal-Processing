// Lab 2 - Exercise 1
// Basic Scilab functions used in DSP

clc;
clear;
clf();

n = -2:2;
x = [3, -1, 0, 2, 1];

disp(min(x), "min(x) =");
disp(max(x), "max(x) =");
disp(bool2s(n >= 0), "bool2s(n >= 0) =");

deff("y = square_signal(t)", "y = t.^2");
y = square_signal(n);

subplot(2,1,1);
plot2d3(n, x);
title("Tin hieu x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2,1,2);
plot2d3(n, y);
title("Ham y(n) = n^2");
xlabel("n");
ylabel("y(n)");
