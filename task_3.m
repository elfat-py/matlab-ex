 % TASK 2

%Task 3.6
%The assigned task
% Convolution : Convolve the following by hand
% Define the sequences
%{
x = [1 2 213 1 1];
h = [3 12023];

% Perform the convolution
y = conv(x, h);

% Display the result
disp('Result of convolution:');
disp(y);
%}

%{
n = 0:12; % Range of n for which we will compute convolution

% Define x[n]
x = @(n) (n >= 0 & n <= 6);

% Convolve x[n] with itself
y = conv(x(n), x(n));

% Plot y[n]
subplot(4, 1, 1);
stem(y);
title('y[n] = x[n] * x[n]');
xlabel('n');
ylabel('Amplitude');
%}

% Convolve y[n] with itself
z = conv(y, y);

% Plot z[n]
subplot(4, 1, 2);
stem(z);
title('z[n] = y[n] * y[n]');
xlabel('n');
ylabel('Amplitude');



% Convolve z[n] with itself
w = conv(z, z);
w = w(1:7); % Limit w[n] to n = 0:6

% Plot w[n]
subplot(4, 1, 3);
stem(w);
title('w[n] = z[n] * z[n], n = 0:6');
xlabel('n');
ylabel('Amplitude');

% Plot x[n]
subplot(4, 1, 4);
stem(x(n));
hold on;

% Plot y[n]
stem(n, y, 'r');

% Plot z[n]
stem(n, z, 'g');

% Plot w[n]
stem(n(1:7), w, 'm');

hold off;
title('x[n], y[n], z[n], and w[n]');
xlabel('n');
ylabel('Amplitude');
legend('x[n]', 'y[n]', 'z[n]', 'w[n]', 'Location', 'NorthEast');
