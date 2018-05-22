function [J,grad] = linearRegCostFunction(X, y, theta, lambda)
%XΪѵ�������룬12*2���󣨺�X0����
%yΪѵ������������12*1����
%thetaΪ�Ż�������2*1����
%%%%%=============���ۺ���=================
[m,n] = size(X);
J = 0;
h = X *theta;               %hΪԤ�⺯����Ϊ12*1����
J = 1/2/m*sum((h-y).^2);    %JΪ���ۺ���
J = J + lambda/2/m*sum(theta(2:end,:).^2);
%%%%=============�ݶ��½�����===============
alpha = 0;
% grad = zeros(n,1);
grad = 1/m*X'*(h-y);                                         %j=0ʱ��gradΪ2*1����
grad(2:end) = 1/m*X(:,2:end)'*(h-y) + lambda/m*theta(2:end);
end
