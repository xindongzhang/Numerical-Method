close all;
clear all;
clc;

for i = 0:10
    X(i+1) = -1 + i * 2 / 10;
    F(i+1) = exp(-X(i+1).^2);
end
Coeff = Newton_Coeff(X, F);


for i = 0:100
    x(i+1) = -1 + i * 2 / 100;
end
y = Newton_Eval(Coeff,X,x);

GT = exp(-x.^2);
Eps = GT - y;

plot(x, Eps);
title('f(x) - P_1_0(x)');
