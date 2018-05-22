function X_poly = polyFeatures(X, p)
%X为训练集输入，12*1矩阵；
%p为X特征数量，8；
x_poly = zeros(numel(X),1);
for i = 1:p
    X_poly(:,i) = X.^i
end
end
