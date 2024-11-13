% Coin toss simulation
n = 5000; % Number of tosses

% Random tosses for heads (1) and tails (0)
tosses = rand(1, n) < 0.5;

% Plot of the ongoing prediction
predictions = cumsum(tosses) ./ (1:n); % Ongoing prediction
expected_value = 0.5 * ones(1, n); % Expected value (0.5)
x_axis = 1:n; % Number of tosses

% Create the plot
plot(x_axis, predictions, '-b', x_axis, expected_value, '--r');
xlabel('Number of Flip Coins');
ylabel('Probability of Heads');
title('Sample Probability of Heads in n flips of a simulated coin');
legend('Sample Probability', 'Fair Coin (0.5)', 'Location', 'best');
