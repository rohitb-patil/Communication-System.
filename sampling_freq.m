% Given frequency components of the signal in Hertz
f_min = 300;
f_max = 1800;

% Calculate the Nyquist rate
nyquist_rate = 2 * f_max;

fprintf('Minimum sampling rate (Nyquist rate): %.2f Hz\n', nyquist_rate);

% Generate and plot the original analog signal
t_continuous = 0:0.001:1;  % Time vector for continuous signal
analog_signal = sin(2 * pi * f_max * t_continuous) 

figure;
subplot(2, 1, 1);
plot(t_continuous, analog_signal);
title('Original Analog Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Sample the analog signal at the Nyquist rate
t_sampled = 0:1/nyquist_rate:1/f_min;  % Time vector for sampled signal
sampled_signal = sin(2 * pi * f_min * t_sampled) + 0.5 * sin(2 * pi * f_max * t_sampled);

% Plot the sampled signal
subplot(2, 1, 2);
stem(t_sampled, sampled_signal);
title('Sampled Signal at Nyquist Rate');
xlabel('Time (s)');
ylabel('Amplitude');

% Link the x-axes for better visualization
linkaxes;

