# A coin is tossed 3 times. Let X denote the number of heads that appear

# a) Find the probability distribution function of X. What type of distribution does
# X have?

# x takes values {0, 1, 2, 3}
x = 0:1:3;
px = binopdf(x, 3, 0.5);
#plot(x, px, '*r');
#hold on

#b) Find the cumulative distribution function of X, FX

xx = 0:0.01:3;
cx = binocdf(xx, 3, 0.5);
#plot(xx, cx, 'g');

# c) Find P(X = 0) and P(X ̸= 1).
# P(X = 0) is the value of binopdf(0,3,0.5)
p1 = binopdf(0,3,0.5);
printf('P(X = 0) = %1.6f\n', p1);

# P(X != 1) is the value of 1 - binopdf(1, 3, 0.5) as we can
# deduct only the probability of x=1 from the whole ones
p2 = 1 - binopdf(1, 3, 0.5);
printf('P(X != 1) = %1.6f\n', p2);

#  binocdf includes all possibilities from 0 to
# X
# d) Find P(X ≤ 2), P(X < 2) (notice that they are different).
# P(X ≤ 2) is equal to the cdf in point 2
p3 = binocdf(2, 3, 0.5);
printf('P(X ≤ 2) = %1.6f\n', p3);

# P(X < 2) is equal to the cdf in point 2 (pdf in point 2 - the value in 2) deducted from the pdf in point 2
# p4 = p3 - binopdf(2, 3, 0.5);
# it is also equal with P(x<=1) because the cumulative is the same, cdf considers 0 or 1 (not 2 because is < 2)

p4 = binocdf(1, 3, 0.5);
printf('P(X > 2) = %1.6f\n', p4);

# e) Find P(X ≥ 1), P(X > 1) (notice that they are different).
# P(X ≥ 1) = 1 - cdf (1)
p5 = 1 - binocdf(1, 3, 0.5);
printf('P(X ≥ 1) = %1.6f\n', p5);

# P(X > 1) = 1 - cdf(0)
p6 = 1 - binocdf(0, 3, 0.5);
printf('P(X > 1) = %1.6f\n', p6);

















