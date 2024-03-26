#Poisson approximation of the Binomial distribution: If n ≥ 30 and p ≤ 0.05,
# then
# Bino(n, p) ≈ Poisson(λ = np).
# Compare graphically the two pdf’s.

% Input parameters
n = input("Please input the n (n >= 30) n = ");
p = input("Please input the probability p (p <= 0.05) p = ");
lambda = n * p;

% Generate values for x
x = 0:n;

% Calculate probability mass functions
y_binomial = binopdf(x, n, p);
y_poisson = poisspdf(x, lambda);

% Plot the distributions
figure;
bar(x, [y_binomial', y_poisson'], 'grouped');
legend("Binomial", "Poisson");
xlabel("X");
ylabel("Probability");
title("Binomial and Poisson Distributions Comparison");

% Display information about the distributions
disp("Binomial Distribution:");
disp(["n = " num2str(n)]);
disp(["p = " num2str(p)]);

disp("Poisson Distribution:");
disp(["lambda = " num2str(lambda)]);

