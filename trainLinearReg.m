function theta = trainLinearReg(X, y, lambda)
%XΪѵ�������룬12*2���󣨺�X0����
%yΪѵ������������12*1����
%lambdaΪ���򻯲���
[m,n] = size(X);
options = optimset('Gradobj','on','MaxIter',100);
initial_theta = zeros(n,1);
costfunction = @(t)linearRegCostFunction(X, y, t, lambda);
[theta,fval] = fmincg(costfunction, initial_theta,options);
end
