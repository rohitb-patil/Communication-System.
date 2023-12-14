% FREQUENCY MODULATION

Am = 5;      % Amplitude of the modulating signal
Fm = 5;     % Frequency of the modulating signal

Ac = 2;      % Amplitude of the carrier signal
Fc = 10;    % Frequency of the carrier signal

Ka = 1;      % Frequency sensitivity constant

Fs = 1000;   % Sampling frequency
t = 0:1/Fs:1; % Time vector

% Modulating signal (Message signal)
m = Am * cos(2 * pi * Fm * t);

% Carrier signal
c = Ac * cos(2 * pi * Fc * t);

% Frequency Modulation
y = Ac * cos(2 * pi * Fc * t + Ka * cumsum(m));

% Plotting
figure;

subplot(4, 1, 1)
plot(t, m)
title('Message Signal')

subplot(4, 1, 2)
plot(t, c)
title('Carrier Signal')

subplot(4, 1, 3)
plot(t, y)
title('Frequency Modulated Signal')

% FM demodulation
delta_phi = diff(unwrap(angle(y)));   % Phase difference
m_demod = diff(delta_phi * Fs/(2*pi*Ka));

% Adjust the time vector for demodulated signal
t_demod = t(2:end-1);

% Plot the demodulated signal
subplot(4, 1, 4)
plot(t_demod, m_demod);
title('Demodulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
