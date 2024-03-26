% Define a range of x values from 0 to 3 with increments of 0.1
x = 0:0.1:3;

% Plot the function x^5/10 with a cyan dashed line
plot(x, x.^5/10, "--c;5 function;", ...

% Add the second function cos(x) with a green dash-dot line
x, cos(x), "-.g;cos(x);");

% Add a title to the graph
title("Some graph");

% Define a range of x values
x = 0:0.1:3;

% Function 1: x^5/10
y1 = x.^5/10;

% Function 2: cos(x)
y2 = cos(x);

% Create a figure
figure;

% Subplot 1: Plot the first function
subplot(2, 1, 1);
plot(x, y1, "--c");
title("Function 1: x^5/10");

% Subplot 2: Plot the second function
subplot(2, 1, 2);
plot(x, y2, "-.g");
title("Function 2: cos(x)");

