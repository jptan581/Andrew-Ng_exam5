function [X_norm, mu, sigma] = featureNormalize(X)
%XΪѵ������������Ϊ12*8����
% [m,n] = size(X);
mu = mean(X,1);                      %����ƽ��,Ϊ1*8����
X_norm = bsxfun(@minus,X,mu);
sigma = std(X_norm,0,1);            %�������������Ϊ1*8����
X_norm = bsxfun(@rdivide,X_norm,sigma);
end