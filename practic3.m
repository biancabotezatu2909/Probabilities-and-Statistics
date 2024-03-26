# Nickel powders are used in coatings to shield electronic equipment.
# A random sample is selected and the sizes of nickel particles in each coating are recorder

# 3.26 1.89 2.42 2.03 3.07 2.95 1.39 3.06 2.46 3.35 1.56 1.79 1.76 3.82 2.42 2.96

# a) Find a 95% confidence interval for the average size of nickel particles
one_minus_alpha = input('Enter the confidence level: '); # we use 0.95
alpha = 1 - one_minus_alpha;

X = [3.26 1.89 2.42 2.03 3.07 2.95 1.39 3.06 2.46 3.35 1.56 1.79 1.76 3.82 2.42 2.96];
n = length(X);

# We calculate the confidence interval for a population mean
# the variance is unknown
m1 = mean(X)- (std(X)/sqrt(n))*tinv(1-alpha/2, n-1);
m2 = mean(X)- (std(X)/sqrt(n))*tinv(alpha/2, n-1);
printf('The confidence interval for the average size of nickel particles is (%1.6f, %1.6f)\n', m1, m2);

# b) At 1% significance level, on average, do these nickel particles seem to be smaller than 3?
alpha = input('Enter the significance level: '); # 0.01

# H0 = these nickel particles are NOT smaller than 3
# H1 = these nickel particles are smaller than 3
# miu < 3 => left tailed test


# This is a left tailed test, because it asks for "smaller than 3"
[h, pval, ci, stats] = ttest(X, 3, 'alpha', alpha, 'tail', 'left');

if h==0
  printf('H0 is not rejected. Nickel particles are NOT smaller than 3\n');
else
  printf('H0 is rejected. Nickel particles are smaller than 3\n');
end


# We compute the rejection interval
q = tinv(1-alpha, stats.df);
printf('Observed values is: %1.6f\n', stats.tstat);
printf('P-value is: %1.6f\n', pval);
printf('The rejection region is: (-inf, %1.6f)\n', q);

# we see that the value of the test is within the rejection interval => H0 rejected





