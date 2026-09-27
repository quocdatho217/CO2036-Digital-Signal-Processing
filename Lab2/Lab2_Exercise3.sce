// Lab 2 - Exercise 3
// Unit impulse signal

clc;
clear;
clf();

n = -5:5;
msignal = bool2s(n == 0);

plot2d3(n, msignal);
title("Tin hieu xung don vi delta(n)");
xlabel("n");
ylabel("delta(n)");
xgrid();
