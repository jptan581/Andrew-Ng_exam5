function theta = trainLinearReg(X, y, lambda)
%X为训练集输入，12*2矩阵（含X0）；
%y为训练集标记输出，12*1矩阵；
%lambda为正则化参数
[m,n] = size(X);
options = optimset('Gradobj','on','MaxIter',100);
initial_theta = zeros(n,1);
costfunction = @(t)linearRegCostFunction(X, y, t, lambda);
[theta,fval] = fmincg(costfunction, initial_theta,options);
end
