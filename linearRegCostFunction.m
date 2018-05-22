function [J,grad] = linearRegCostFunction(X, y, theta, lambda)
%X为训练集输入，12*2矩阵（含X0）；
%y为训练集标记输出，12*1矩阵；
%theta为优化参数，2*1矩阵；
%%%%%=============代价函数=================
[m,n] = size(X);
J = 0;
h = X *theta;               %h为预测函数，为12*1矩阵；
J = 1/2/m*sum((h-y).^2);    %J为代价函数
J = J + lambda/2/m*sum(theta(2:end,:).^2);
%%%%=============梯度下降函数===============
alpha = 0;
% grad = zeros(n,1);
grad = 1/m*X'*(h-y);                                         %j=0时，grad为2*1矩阵；
grad(2:end) = 1/m*X(:,2:end)'*(h-y) + lambda/m*theta(2:end);
end
