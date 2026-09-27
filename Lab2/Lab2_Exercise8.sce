// Lab 2 - Exercise 8
// Discrete-time signal transformations

clc;
clear;

// Original signal
n = -2:1;
x = [1 -2 3 6];

// y1(n) = x(-n)
n1 = -n(length(n):-1:1);
y1 = x(length(x):-1:1);

scf(1);
clf();

subplot(2,1,1);
plot2d3(n, x);
title("Tin hieu x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2,1,2);
plot2d3(n1, y1);
title("Tin hieu y_1(n) = x(-n)");
xlabel("n");
ylabel("y_1(n)");

// y2(n) = x(n + 3)
n2 = n - 3;
y2 = x;

scf(2);
clf();

subplot(2,1,1);
plot2d3(n, x);
title("Tin hieu x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2,1,2);
plot2d3(n2, y2);
title("Tin hieu y_2(n) = x(n + 3)");
xlabel("n");
ylabel("y_2(n)");

// y3(n) = 2x(-n - 2)
n3 = -n(length(n):-1:1) - 2;
y3 = 2 * x(length(x):-1:1);

scf(3);
clf();

subplot(2,1,1);
plot2d3(n, x);
title("Tin hieu x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2,1,2);
plot2d3(n3, y3);
title("Tin hieu y_3(n) = 2x(-n - 2)");
xlabel("n");
ylabel("y_3(n)");
