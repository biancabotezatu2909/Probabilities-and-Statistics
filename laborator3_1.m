# 1st exercise
# Let X have one of the following distributions: X ∈ N(µ, σ) (Normal), X ∈ T(n)
#(Student), X ∈ χ2
#(n), or X ∈ F(m, n) (Fisher) (all continuous). Compute the following:

# solve in student distribution, which is continuous(use cdf)
# a) P(X ≤ 0) and P(X ≥ 0);

n = input('Degree of freedom (n) = ');
p1 = tcdf(0,n);
printf('P(X ≤ 0) = %1.6f\n', p1);
printf('P(X ≤ 0) = %1.6f\n', 1 - p1);

# P(a < X <= b) = P(a <= X <= b) = F(b) - F(a) - continuous distributions
# b) P(−1 ≤ X ≤ 1) and P(X ≤ −1 or X ≥ 1);
p2 = tcdf(1,n) - tcdf(-1, n);
printf('P(-1 < X <= 1) = %1.6f\n', p2);
printf('P(X ≤ −1 or X ≥ 1) = %1.6f\n', 1-p2); #opposite


# c) the value xα such that P(X < xα) = P(X ≤ xα) = α, for α ∈ (0, 1) (xα is
# called the quantile of order α);
# x_alpha, represents a point on the distribution such that a certain
# percentage of the distribution is below that point.
# compute whats below
alpha = input('Give the quantile order (between 0 and 1), alpha = ');
x_alpha = tinv(alpha, n);
printf('When P(X < xα) = α, x_alpha is %1.6f\n', x_alpha);
#x_alpha = quantile of order alpha

# d) the value xβ such that P(X > xβ) = P(X ≥ xβ) = β, for β ∈ (0, 1) (xβ is
# the quantile of order 1 − β).
# compute whats above
beta = input('Give the quantile order (between 0 and 1), beta = ');
x_beta = tinv(1-beta, n);
printf('When P(X > xβ) = P(X ≥ xβ) = β, x_beta is %1.6f\n', x_beta);









