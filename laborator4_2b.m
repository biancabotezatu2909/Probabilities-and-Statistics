# Binomial Distribution Bino(p), with parameters n ∈ IN, p ∈ (0, 1): X
# Hint: A Binomial Bino(n, p) variable is the sum of n independent Bern(p) variables;

N = input('Give the number of simulations: ');
P = input('Give the probability: ');
n = input('Give the number of trials: ');

# generate a matrix of N simulations with n trials
U = rand(n, N);

# we need to transform the probabilties in 0/1 (succes/failure)

# U<P creates a logical matrix formed of only 1/0 if the element is < P
# sum(U<p) makes the sum on columns, adding up the elements < P, and stores in X
X = sum(U<P)

# k - nr o succeses
k = 0:n

# p_k = probability of obtaining each number of succeses(k),
# in a fixed numebr of trials (n), with a given probability of succes
p_k = binopdf(k, n, P)
U_X = unique(X);
n_X = hist(U_X, length(U_X)) # n_X will contain the nr of 0 and 1
rel_freq = n_X/N # the percent of 1 and 0 found in n_X
plot(U_X, rel_freq, '*b;"Verification";', k, p_k, 'or;"Binomial";')



