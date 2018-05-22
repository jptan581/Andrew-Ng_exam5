function [error_train, error_val] = learningCurve(X, y, Xval, yval, lambda)
%XΪѵ�������룬12*2���󣨺�X0����
%yΪѵ������������12*1����
%XvalΪ������֤�����룬12*2����
%yvalΪ������֤�������12*1����
%lambdaΪ���򻯲�������ʼֵΪ0��
[m,n] = size(X);
lambda = 1;
for i = 1:m
    Xi = X(1:i,:);
    yi = y(1:i);
    theta = trainLinearReg(Xi, yi, lambda);
    [error_train(i),grad_train] = linearRegCostFunction(Xi, yi, theta, lambda);
    [error_val(i), grad_val] = linearRegCostFunction(Xval, yval, theta, lambda);
end