// Lab 1 - Exercise 1.2
// Analog signal, sampling and quantization

clc;
clear;
clf();

// a. Analog signal xa(t) in 5 periods
t = linspace(0, 0.1, 1000);
xa = 3 * sin(100 * %pi * t);

// b. Discrete-time signal x(n), Fs = 300 samples/s
Fs = 300;
Ts = 1 / Fs;

n = 0:29;
x = 3 * sin(%pi * n / 3);

// d. Quantization, Delta = 0.1, truncated method
Delta = 0.1;
xq = Delta * fix(x / Delta);

// Display all signals in one window
scf(1);
clf();

subplot(3,1,1);
plot(t, xa);
title("xa(t) = 3sin(100*pi*t)");
xlabel("t (s)");
ylabel("Amplitude");
xgrid();

subplot(3,1,2);
plot2d3(n, x);
title("x(n) = 3sin(pi*n/3)");
xlabel("n");
ylabel("Amplitude");
xgrid();

subplot(3,1,3);
plot2d3(n, xq);
title("xq(n), Delta = 0.1");
xlabel("n");
ylabel("Amplitude");
xgrid();
