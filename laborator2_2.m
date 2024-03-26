# Plot the graphs of the pdf and cdf a random variable X having Binomial distribution
# of parameters n and p (given by the user)

# The binocdf function calculates the cumulative probability that a binomial
# random variable is less than or equal to a given value.

# n = natural
n = input("Give number of trials, n= ");

# p is between 03 and 1
p = input("Give the probability of succes, p = ");

# this is the number of succeses that we can find in n trials
x = 0:1:n;

px = binopdf(x,n,p);

# a pdf graph is a graph of points, not continuous
plot(x,px,'*r')

# will fuse both graphs instead of printing only the cdf one, while figure keeps hem separate
hold on

xx = 0:0.01:n;
cx = binopdf(xx,n,p);
plot(xx,cx,'g');
legend('Red is pdf', 'Green is cdf');

