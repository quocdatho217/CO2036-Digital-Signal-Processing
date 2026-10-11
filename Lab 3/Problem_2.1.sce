n = -3:3;
xn = zeros(1, length(n));
for i = 1:length(n)
    if n(i) >= -3 & n(i) <= -1 then
        xn(i) = 1 + n(i)/3;
    elseif n(i) >= 0 & n(i) <= 3 then
        xn(i) = 1;
    end
end
xorigin = find(n == 0);

scf(7); clf(); plot2d3(n, xn);
title("Problem 2.1(a): x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();

// (b1), (b2), (c), (d)
function [yn, yorigin] = delay(xn, xorigin, k)
    if k < 0 then
        error("k must be nonnegative");
    end
    yn = matrix(xn, 1, -1);
    yorigin = xorigin - k;
endfunction

function [yn, yorigin] = fold(xn, xorigin)
    xn = matrix(xn, 1, -1);
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;
endfunction

// Khoi tao x(n) cua Problem 2.1(a), voi x(0) o phan tu thu 4
n = -3:3;
xn = [0, 1/3, 2/3, 1, 1, 1, 1];
xorigin = 4;

// Delay 4 mau, sau do fold
[dn, dorigin] = delay(xn, xorigin, 4);
[z1n, z1origin] = fold(dn, dorigin);
nz1 = (1:length(z1n)) - z1origin;

scf(8); clf(); plot2d3(nz1, z1n);
title("Delay 4 samples, then fold");
xlabel("n"); ylabel("Bien do");
xgrid();
disp(z1n, "z1n =");
disp(z1origin, "z1origin =");
disp(nz1, "nz1 =");

// Fold truoc, sau do delay 4 mau
[fn, forigin] = fold(xn, xorigin);
[z2n, z2origin] = delay(fn, forigin, 4);
nz2 = (1:length(z2n)) - z2origin;

scf(9); clf(); plot2d3(nz2, z2n);
title("Fold, then delay 4 samples");
xlabel("n"); ylabel("Bien do");
xgrid();
disp(z2n, "z2n =");
disp(z2origin, "z2origin =");
disp(nz2, "nz2 =");

// Fold truoc, sau do delay 4 mau de tao x(-n+4)
[xf, xforigin] = fold(xn, xorigin);
[xc, xcorigin] = delay(xf, xforigin, 4);
nc = (1:length(xc)) - xcorigin;

scf(10); clf(); plot2d3(nc, xc);
title("Problem 2.1(c): x(-n+4)");
xlabel("n"); ylabel("Bien do");
xgrid();
disp(xc, "xc =");
disp(xcorigin, "xcorigin =");
disp(nc, "nc =");

// (d) So sanh
function [yn, yorigin] = delay(xn, xorigin, k)
    if k < 0 then
        error("k must be nonnegative");
    end
    yn = matrix(xn, 1, -1);
    yorigin = xorigin - k;
endfunction

function [yn, yorigin] = fold(xn, xorigin)
    xn = matrix(xn, 1, -1);
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;
endfunction

// Khoi tao x(n) cua Problem 2.1(a)
n = -3:3;
xn = [0, 1/3, 2/3, 1, 1, 1, 1];
xorigin = 4;

// Delay truoc, sau do fold: z1(n) = x(-n-4)
[dn, dorigin] = delay(xn, xorigin, 4);
[z1n, z1origin] = fold(dn, dorigin);
nz1 = (1:length(z1n)) - z1origin;

// Fold truoc, sau do delay: z2(n) = x(-n+4)
[fn, forigin] = fold(xn, xorigin);
[z2n, z2origin] = delay(fn, forigin, 4);
nz2 = (1:length(z2n)) - z2origin;

scf(11); clf();
subplot(2, 1, 1); plot2d3(nz1, z1n);
title("Delay then fold: x(-n-4)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(2, 1, 2); plot2d3(nz2, z2n);
title("Fold then delay: x(-n+4)");
xlabel("n"); ylabel("Bien do");
xgrid();

disp(z1n, "z1n =");
disp(z1origin, "z1origin =");
disp(nz1, "nz1 =");
disp(z2n, "z2n =");
disp(z2origin, "z2origin =");
disp(nz2, "nz2 =");

// (e) Bieu dien bang delta(n) va u(n)
function d = delta_seq(m)
    d = bool2s(m == 0);
endfunction

function u = unit_step_seq(m)
    u = bool2s(m >= 0);
endfunction

ncheck = -5:6;
xoriginal = zeros(1, length(ncheck));
for i = 1:length(ncheck)
    if ncheck(i) >= -3 & ncheck(i) <= -1 then
        xoriginal(i) = 1 + ncheck(i)/3;
    elseif ncheck(i) >= 0 & ncheck(i) <= 3 then
        xoriginal(i) = 1;
    end
end

xdelta = (1/3)*delta_seq(ncheck + 2) + (2/3)*delta_seq(ncheck + 1) + unit_step_seq( ...
   ncheck) - unit_step_seq(ncheck - 4);
difference = xoriginal - xdelta;

scf(22); clf();
subplot(3, 1, 1); plot2d3(ncheck, xoriginal);
title("Tin hieu goc x(n)");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 2); plot2d3(ncheck, xdelta);
title("Bieu dien bang delta va u");
xlabel("n"); ylabel("Bien do");
xgrid();
subplot(3, 1, 3); plot2d3(ncheck, difference);
title("Sai lech x(n) - bieu dien delta/u");
xlabel("n"); ylabel("Sai lech");
xgrid();

disp(ncheck, "n =");
disp(xoriginal, "xoriginal =");
disp(xdelta, "xdelta =");
disp(difference, "difference =");
