function theta=normal_equation(X,y)
theta = zeros(size(X, 2), 1);

theta=pinv(X'*X)*X'*y;
endfunction