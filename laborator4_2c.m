#c. Geometric Distribution Geo(p), with parameter p ∈ (0, 1): X
# Hint: A Geometric Geo(p) variable represents the number of failures
# (i.e. the number of Bernoulli trials that ended up being failures) needed to
# get the first success;

N = input('Input the umber of simulations: ');
P = input('Give the probability: ');
 # we must simulate the number of trials, as we cannot know how many will happen
 # until we get a success
 # all trials have in common that they start with 0 failures, so this vector
 # will contain only 0 for N simulations
 X = zeros(1,N);

 for i=1:N
   X(i) = 0;
   # as long as we get failures we increment X(i) for each trial
   while rand() >=P
     X(i) = X(i)+1;
   endwhile
 endfor

 # we replace infinity with 20 as we cannot simulate an infinity of failures
 k = 0:20;
 p_k = geopdf(k, P);
 U_X = unique(X);
 n_X = hist(X, length(U_X));
 rel_freq = n_X/N;
 plot(k, p_k, 'or;"Geopdf";', U_X, rel_freq, '*b;"Verification";');











