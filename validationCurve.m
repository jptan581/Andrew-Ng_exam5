function [lambda_vec, error_train, error_val] = validationCurve(X, y, Xval, yval)
lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';
m = length(lambda_vec)
error_train = zeros(m,1);
error_val = zeros(m,1);
for i = 1:m
    theta = trainLinearReg(X, y, lambda_vec(i));
    [error_train(i),~] = linearRegCostFunction(X, y, theta, 0);
    [error_val(i),~] = linearRegCostFunction(Xval, yval, theta, 0);
end
end