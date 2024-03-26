% Given frequency distributions
X_values = [20 21 22 23 24 25 26 27];
X_frequencies = [2 1 3 6 5 9 2 2];

Y_values = [75 76 77 78 79 80 81 82];
Y_frequencies = [3 2 2 5 8 8 1 1];

X_combined = repelem(X_values, X_frequencies);
Y_combined = repelem(Y_values, Y_frequencies);

# a) the means X, Y ( mean );

a=mean(X_combined);
printf('The mean of X is %1.6f\n', a);
b=mean(Y_combined);
printf('The mean of Y is %1.6f\n', b);


#b) the variances of a random variable X is calculated as the average of
# the squared differences between each value and the mean
sigmaX = var(X_combined);
printf('The variance of X is %1.6f\n', sigmaX);
sigmaY = var(Y_combined);
printf('The variance of Y is %1.6f\n', sigmaY);


# c) the covariance cov(X, Y ) ( cov ); = relation between var x and y (increase both => cov>0,
# decrease both cov<0, nothing changes => cov=0)

c = cov(X_combined, Y_combined);
printf('The covariance between X and Y is %1.6f\n', c);

# d) the correlation coefficient ρXY ( corrcoef ). is between (-1, 1)
d = corrcoef(X_combined, Y_combined); #it is a matrix
# matrix, elements symetric, so we choose (1, 2) - the combination between X and Y
r = d(1, 2);
printf('The corelation coefficient is %1.6f\n', r);
