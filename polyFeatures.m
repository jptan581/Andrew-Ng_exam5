function X_poly = polyFeatures(X, p)
%XΪѵ�������룬12*1����
%pΪX����������8��
x_poly = zeros(numel(X),1);
for i = 1:p
    X_poly(:,i) = X.^i
end
end
