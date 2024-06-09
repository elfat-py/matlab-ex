% Define the transfer functions numerically
% G1(s) = 1/(2s + 100)
num1 = [1];
den1 = [2 100];

% G2(s) = 1/((s + 2)(s + 4))
num2 = [1];
den2 = conv([1 2], [1 4]);

% G3(s) = 1/((s^2 + 2s + 25)(s + 4))
num3 = [1];
den3 = conv([1 2 25], [1 4]);

% Frequency range for Bode plot
w = logspace(-1, 3, 1000);

% Compute magnitude and phase for G1
[mag1, phase1] = manual_bode_response(num1, den1, w);

% Compute magnitude and phase for G2
[mag2, phase2] = manual_bode_response(num2, den2, w);

% Compute magnitude and phase for G3
[mag3, phase3] = manual_bode_response(num3, den3, w);

% Plot the Bode plots
figure;

% G1(s) Bode plot
subplot(3, 2, 1);
semilogx(w, 20*log10(mag1));
title('Bode Plot of G1(s) = 1/(2s+100)');
ylabel('Magnitude (dB)');
grid on;

subplot(3, 2, 2);
semilogx(w, phase1);
ylabel('Phase (degrees)');
grid on;

% G2(s) Bode plot
subplot(3, 2, 3);
semilogx(w, 20*log10(mag2));
title('Bode Plot of G2(s) = 1/((s+2)(s+4))');
ylabel('Magnitude (dB)');
grid on;

subplot(3, 2, 4);
semilogx(w, phase2);
ylabel('Phase (degrees)');
grid on;

% G3(s) Bode plot
subplot(3, 2, 5);
semilogx(w, 20*log10(mag3));
title('Bode Plot of G3(s) = 1/((s^2 + 2s + 25)(s+4))');
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
grid on;

subplot(3, 2, 6);
semilogx(w, phase3);
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
grid on;

% Function to compute magnitude and phase response manually
function [mag, phase] = manual_bode_response(num, den, w)
    % Initialize magnitude and phase arrays
    mag = zeros(size(w));
    phase = zeros(size(w));
    
    % Loop through each frequency
    for k = 1:length(w)
        % Evaluate the transfer function at jw
        jw = 1i * w(k);
        H = polyval(num, jw) / polyval(den, jw);
        
        % Compute magnitude and phase
        mag(k) = abs(H);
        phase(k) = angle(H) * (180 / pi); % Convert phase to degrees
    end
end
