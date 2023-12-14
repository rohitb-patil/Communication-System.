% Define parameters
sampling_frequency = 1000; % in Hertz
time_interval = 1; % in seconds
amplitude = 1;
frequency = 5; % in Hertz

% Generate time vector
t = 0:1/sampling_frequency:time_interval;

% Generate sine wave
y = amplitude * sin(2 * pi * frequency * t);

% Plot the sine wave
subplot(2,1,1);
plot(t, y);
title('Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
subplot(2,1,2);
stem(t,y);
title('Sampled Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
