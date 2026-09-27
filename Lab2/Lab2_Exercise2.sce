// Lab 2 - Exercise 2
// Unit step signal

clc;
clear;
clf();

n = -5:5;
msignal = bool2s(n >= 0);

plot2d3(n, msignal);
title("Tin hieu buoc nhay don vi u(n)");
xlabel("n");
ylabel("u(n)");
xgrid();
