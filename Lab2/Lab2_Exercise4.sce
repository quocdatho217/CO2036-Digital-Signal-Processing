// Lab 2 - Exercise 4
// Unit ramp signal

clc;
clear;
clf();

n = -5:5;
ur = n .* bool2s(n >= 0);

plot2d3(n, ur);
title("Tin hieu doc don vi u_r(n)");
xlabel("n");
ylabel("u_r(n)");
xgrid();
