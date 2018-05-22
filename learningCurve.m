function [error_train, error_val] = learningCurve(X, y, Xval, yval, lambda)
%X为训练集输入，12*2矩阵（含X0）；
%y为训练集标记输出，12*1矩阵；
%Xval为交叉验证集输入，12*2矩阵；
%yval为交叉验证集输出，12*1矩阵；
%lambda为正则化参数（初始值为0）
[m,n] = size(X);
lambda = 1;
for i = 1:m
    Xi = X(1:i,:);
    yi = y(1:i);
    theta = trainLinearReg(Xi, yi, lambda);
    [error_train(i),grad_train] = linearRegCostFunction(Xi, yi, theta, lambda);
    [error_val(i), grad_val] = linearRegCostFunction(Xval, yval, theta, lambda);
end