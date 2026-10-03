clc; close all; clear all;

%% i) Generation of Single tone signal
Fs = 8192;                    % Default Sampling Frequency (Hz)
Ts = 1/Fs;                    % Sampling Interval (s)
T = 0:Ts:(Fs*Ts);             % One Second
Frq = 1000;                   % Tone Frequency
Y = sin(2*pi*Frq*T);          % Tone
Y0 = zeros(1,Fs*2);            % Silent Interval
Ys = [repmat([Y Y0],1,4) Y];
disp(Ys)
figure;
stem(Ys);
xlabel('n ----->'); ylabel('Ys');

%% ii) Composite signal

% Number of samples
num_samples = 100;

% Time vector
t = linspace(0, 1, num_samples);

% Ramp signal
slope = 2; % Adjust the slope as needed
ramp_signal = slope * t;

% Step signal
step_start = 0.4;
step_amplitude = 1; % Adjust the amplitude as needed
step_signal = step_amplitude * (t >= step_start);

% Composite signal (sum of ramp and step)
composite_signal = ramp_signal + step_signal;

% Plotting individual signals and composite signal
figure;

subplot(3, 1, 1);
stem(t, ramp_signal);
title('Ramp Signal');

subplot(3, 1, 2);
stem(t, step_signal);
title('Step Signal');

subplot(3, 1, 3);
stem(t, composite_signal);
title('Composite Signal (Ramp + Step)');
xlabel('Time');
ylabel('Amplitude');

% Display the plot
title('Composite Signal Example (Ramp + Step)');