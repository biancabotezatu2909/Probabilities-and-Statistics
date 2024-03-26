# a) Assuming that past experience indicates that σ = 5 (standard deviation),
# find a 100(1−α)% confidence interval for the average number
# of files stored.

X=[7 7 4 5 9 9 ...
  4 12 8 1 8 7 ...
  3 13 2 1 17 7 ...
  12 5 6 2 1 13 ...
  14 10 2 4 9 11 ...
  3 5 12 6 10 7];

 l = length(X);
 #we will use 0.95
 one_minus_alpha = input('Input the confidence level =');
 alpha = 1 - one_minus_alpha;
 sigma = 5;
 m1a = mean(X) - ((sigma/sqrt(l)) * norminv(1 - alpha/2, 0, 1));
 m2a = mean(X) - ((sigma/sqrt(l)) * norminv(alpha/2, 0, 1));

 printf('The confidence interval for the theoretical mean, when sigma is known is: ');
 printf('(%1.6f, %1.6f)\n', m1a, m2a);

# b) Assuming nothing is known about σ, find a 100(1 − α)% confidence interval for
# the average number of files stored.
m1b = mean(X) - (std(X)/sqrt(l) * tinv(1-alpha/2, l-1));
m2b =  mean(X) - (std(X)/sqrt(l) * tinv(alpha/2, l-1));
 printf('The confidence interval for the theoretical mean, when sigma is unknown is: ');
 printf('(%1.6f, %1.6f)\n', m1b, m2b);

# c) Assuming the number of files stored are approximately normally distributed, find
# 100(1 − α)% confidence intervals for the variance and for the standard deviation.
 m1c = (l-1)*var(X)/chi2inv(1-alpha/2, l-1);
 m2c = (l-1)*var(X)/chi2inv(alpha/2, l-1);
 printf('The confidence interval for the theoretical variance is: ');
 printf('(%1.6f, %1.6f)\n', m1c, m2c);

 s1 = sqrt(m1c);
 s2 = sqrt(m2c);
 printf('The confidence interval for the theoretical standard deviation is: ');
 printf('(%1.6f, %1.6f)\n', s1, s2);








