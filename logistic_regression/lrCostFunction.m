function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));
gd = zeros(size(theta));
hx = sigmoid(X(:,1:3)*theta);
reg = 0;
for i=2:size(theta)
    reg = reg+ theta(i)^2;
    gd(i)=lambda/m*theta(i);
end

J = (-y'*log(hx)-(1-y)'*log((1-hx)))/m+reg*lambda/2/m;
grad = X'*(hx-y)/m+gd;

grad = grad(:);

end
