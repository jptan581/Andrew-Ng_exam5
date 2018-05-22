function [X_norm, mu, sigma] = featureNormalize(X)
%X为训练集特征量，为12*8矩阵
% [m,n] = size(X);
mu = mean(X,1);                      %求列平均,为1*8矩阵；
X_norm = bsxfun(@minus,X,mu);
sigma = std(X_norm,0,1);            %求列向量均方差，为1*8矩阵；
X_norm = bsxfun(@rdivide,X_norm,sigma);
end