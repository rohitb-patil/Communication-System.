function visualizeMidTreadQuantization()
    % Generate a sample signal
    fs = 1000;  % Sampling frequency
    t = 0:1/fs:1;  % Time vector from 0 to 1 second
    signal = sin(2*pi*5*t);  % Example sinusoidal signal

    % Quantize the signal using mid-tread quantization with 4 bits
    num_bits = 4;
    quantized_signal = midTreadQuantization(signal, num_bits);

    % Plot the original and quantized signals
    figure;

    subplot(2,1,1);
    plot(t, signal, 'b', 'LineWidth', 1.5);
    title('Original Signal');
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;

    subplot(2,1,2);
    stairs(t, quantized_signal, 'r', 'LineWidth', 1.5);
    title(['Mid-Tread Quantization - ', num2str(num_bits), ' bits']);
    xlabel('Time (s)');
    ylabel('Quantized Amplitude');
    ylim([-1.2 1.2]);  % Adjust ylim based on the input signal range
    grid on;

    sgtitle('Signal and Mid-Tread Quantization');
end

function quantized_output = midTreadQuantization(input_signal, num_bits)
    % Input signal should be in the range [-1,1]
    % num_bits is the number of bits for quantization

    % Calculate the step size
    step_size = 2 / (2^num_bits);

    % Quantize the input signal
    %quantized_output = round(input_signal / step_size) * step_size;
    quantized_output=floor(input_signal/step_size)*step_size+step_size/2;
end
