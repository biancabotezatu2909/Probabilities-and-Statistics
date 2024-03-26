#2. Using a U(0, 1) (standard Uniform) random number generator, generate
# the common discrete probability distributions:
# a. Bernoulli Distribution Bern(p), with parameter p ∈ (0, 1):
# X (0   1)
#   (1-p p)

N = input('Give the number of simulations: ');
P = input('Give the probability between (0, 1), p = ');

# here we generate all the simulations
U = rand(1, N)

# result of Bernoulli Distribution
X = (U < P)

# S = sum(X);

# we need to find the empirical pribability (Nf/Nt), how many times 0 appears in data
# and how many 0 appears in data

#here we clarify the results in X
U_X = [0 1];

# n_X wil contain the nr of 0 and 1
# n_X = array of frequencies
n_X = hist(X, length(U_X))

# this is the percent of 1's and 0's found in the n_X
rel_freq = n_X/N

