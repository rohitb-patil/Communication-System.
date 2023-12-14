% Given frequencies
f_c = 1e6; % 1 MHz carrier frequency
period = 100e-6; % Period of the square wave in seconds
f_m = 1/period; % Modulation frequency

% Calculate the frequency components
n = -10:10; % Choose a range of integers to cover possible sidebands
frequency_components = f_c + n*f_m;

% Display the frequency components
disp('Frequency components in kHz:');
disp(frequency_components/1e3);

% Plot the frequency components
figure;
stem(frequency_components/1e3, ones(size(frequency_components)), 'o');
title('Frequency Components of Amplitude-Modulated Signal');
xlabel('Frequency (kHz)');
ylabel('Amplitude');

% Highlight the given options
hold on;
highlighted_frequencies = [990, 1010, 1020, 1030];
stem(highlighted_frequencies, ones(size(highlighted_frequencies)), 'rx');
legend('Frequency Components', 'Given Options');
hold off;
