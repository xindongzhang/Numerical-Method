function result = Newton_Eval(Coeff,X,x)

N = length(X);
result = zeros(size(x));

for i = 1:max(size(x))
    result(i) = Coeff(N);
    for j = N-1:-1:1
        result(i) = Coeff(j) + (x(i) - X(j)) * result(i);
    end
end

end