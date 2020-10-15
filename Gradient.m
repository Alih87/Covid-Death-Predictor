function [theta, J_hist] = Gradient(X, Y, theta, alpha , iterations)
J_hist = zeros(iterations,1);
m = length(Y);
for iter = 1:iterations
    error = (X*theta)-Y;
    temp0 = theta(1) - ( alpha /m ) * sum(error.* X(:,1));
    temp1 = theta(2) - ( alpha /m ) * sum(error.* X(:,2));
    theta = [temp0; temp1];
    J_hist(iter) = cost(X,Y,theta);
end
end