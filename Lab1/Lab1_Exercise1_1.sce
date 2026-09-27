// Lab 1 - Exercise 1.1
// Vector and element-wise operations

clc;
clear;

// a. (x1+1, x2+1, x3+1, x4+1)
x = 1:4;
result1 = x + 1;
disp(result1, "result1 =");

// b. (x1*y1, x2*y2, x3*y3, x4*y4)
x = 1:4;
y = 5:8;
result2 = x .* y;
disp(result2, "result2 =");

// c. (sin(x1), ..., sin(x10))
x = linspace(0, %pi, 10);
result3 = sin(x);
disp(result3, "result3 =");
