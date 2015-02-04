% newton-form interpolation polynomial %
% calculate the coefficients %
function Coeff = Newton_Coeff(X, F)

N = length(X);
%% handle error
if max( max(size(F)) ~= N)
    error('the size of F must agree with X');
    return;
end


%% begin calculate the coefficient
Coeff = F;

for k = 2:N
    for j = N:-1:k
        Coeff(j) = ( Coeff(j) - Coeff(j-1) ) / (X(j) - X(j-k+1));
    end
end

end





