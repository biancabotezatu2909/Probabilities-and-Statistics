# A food store owner receives 1-liter water bottles from 2 suppliers.
# After some complaints from customers, he wants to check the accuracy of the weights
# of 1-liter water bottles. He finds the following weights
# Supplier A 1021 980 1017 988 1005 998 1014 985 995 1004 1030 1015 995 1023
# Supplier B 1070 970 993 1013 1006 1002 1014 997 1002 1010 975

# a) At 5% significance level, do the population variances seem to differ?
printf('point a) \n\n')

X = [1021 980 1017 988 1005 998 1014 985 995 1004 1030 1015 995 1023];
Y = [1070 970 993 1013 1006 1002 1014 997 1002 1010 975];

n1 = length(X);
n2 = length(Y);

alpha = input('Enter the significance level: ');

# H0 = The population variances do not differ
# H1 =  The population variances differ
# it is a two-tailed test
# H0 : sigma1 = sigma2
# H1 : sigma1 != sigma2

[h, pval, ci, stats] = vartest2(X, Y, 'alpha', alpha, 'tail', 'both');
if h==0
  printf('The H0 is NOT rejected. The population variances do not differ.\n');
else
  printf('The H0 rejected. The population variances differ.\n');
end

# we compute the rejection region
q1 = finv(alpha/2, stats.df1, stats.df2);
q2 = finv(1-alpha/2, stats.df2, stats.df1);
printf('The p-value from the test statistic is: %1.6f\n', pval);
printf('The value from the test statistic is: %1.6f\n', stats.fstat);
printf('The rejection region R is (-inf, %1.6f) U (%1.6f, +inf)\n', q1, q2);

printf('\n\npoint b) \n\n')
# b) At the same significance level, on average, does Supplier A seem to be more reliable?
# H0 = The mean of Supplier A is greater than the mean of Supplier B
# H1 = The mean of Supplier A is NOT greater than the mean of Supplier B
#it is a right tail test: miu1 > miu2
[h, pval, ci, stats] = ttest2(X, Y);
if h==0
  printf('The H0 is not rejected.\nThe mean of Supplier A is NOT greater than the mean of Supplier B\n\n');
else
    printf('The H0 is rejected\nThe mean of Supplier A is greater than the mean of Supplier B\n');
end

# we compute the rejection region
q = tinv(1-alpha, stats.df);
printf('The observed value is: %1.6f\n', stats.tstat);
printf('The rejection region R is (%1.6f, +inf)\n', q);
printf('The p-value from the test statistic is: %1.6f\n', pval);





