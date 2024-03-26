# simulation of coin tosses
# get the number of simulations from the user
N = input("Input the number of simulations, N = ");

# create a matrix where each element is a random number between 0 and 1, U 3 x N,
# representing the outcomes of 3 coin tosses performed N times
U = rand(3, N)

# create a matrix Y with the same dimensions as U, where each element is 1 if the corresponding element in U
# is less than 0.5 (heads) and 0 otherwise
Y = (U < 0.5)

# computes sum on columns, repr how many heads in one toss
S = sum(Y)

