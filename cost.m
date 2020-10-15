function [J] = cost(X,Y,theta)
m = length(Y);
J = (1 / (2*m) ) * sum(((X * theta)-Y).^2);
end