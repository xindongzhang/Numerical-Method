clear all;
close all;
clc;

X = -2:0.2:2;
F = sin(X);
Coeff = Newton_Coeff(X, F);

x = -2:0.1:2;
y = Newton_Eval(Coeff,X,x);

plot(X,F)
hold on
plot(x,y,'*')
