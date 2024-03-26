# 2nd exercise
# Normal approximation of the Binomial distribution: For moderate values of
# p (0.05 ≤ p ≤ 0.95) and large values of n (n → ∞),
# Bino(n, p) ≈ Norm (µ = np, σ = sqrt(np(1-p))

# Write an Octave code to visualize how the Binomial distribution gradually takes
# the shape of the Normal distribution as n → ∞.

p = input('Give the probability of succes (0.05 ≤ p ≤ 0.95), p = ');
for(n = 1: 3: 100)
  x = 0:n; # at most n succeses in n trials
  y = binopdf(x, n, p); # returns a vector of probabilities for ech nr of succes
  plot(x, y); # see gradually define a bell shape
  pause(0.5);
 endfor


