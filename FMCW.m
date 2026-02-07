 % FMCW Radar Simulation for Range Estimation

clc;
clear;
close all;

% Radar Parameters
c = 3e8;              % Speed of light
fc = 77e9;            % Carrier frequency (77 GHz)
B = 150e6;            % Bandwidth (150 MHz)
T = 50e-6;            % Chirp time (50 micro sec)
S = B/T;              % Chirp slope

R = 100;              % Target range (100 meters)
tau = 2*R/c;          % Time delay

Fs = 2*B;             % Sampling frequency
t = 0:1/Fs:T-1/Fs;    % Time vector

% Transmitted signal
tx = cos(2*pi*(fc*t + (S*t.^2)/2));

% Received signal
rx = cos(2*pi*(fc*(t-tau) + (S*(t-tau).^2)/2));

% IF (Beat) signal
if_signal = tx .* rx;

% FFT
N = length(if_signal);
fft_sig = abs(fft(if_signal));
fft_sig = fft_sig(1:N/2);
f = (0:N/2-1)*(Fs/N);

% Beat frequency
[~, idx] = max(fft_sig);
fb = f(idx);

% Estimated range
R_est = (c*fb*T)/(2*B);

fprintf('Actual Range = %.2f m\n', R);
fprintf('Estimated Range = %.2f m\n', R_est);

% Plots
figure;
subplot(3,1,1)
plot(t*1e6, tx)
title('Transmitted FMCW Signal')
xlabel('Time (µs)')
ylabel('Amplitude')

subplot(3,1,2)
plot(t*1e6, if_signal)
title('IF (Beat) Signal')
xlabel('Time (µs)')
ylabel('Amplitude')

subplot(3,1,3)
plot(f/1e6, fft_sig)
title('FFT of IF Signal')
xlabel('Frequency (MHz)')
ylabel('Magnitude')
