% This tests whether the impulse_response.m function works
fs=10;
t=-1:1/fs:1;
x=cos(2*pi*t);    % input signal
y=3*cos(2*pi*t);  % output signal
[h,t]=impulse_response(x,y,fs);   % we expect the impulse response to be
amplitude=(1/fs)*trapz(h)         % a dirac delta with amplitude 3

% 2/3/2019 (Alex Chang): an additional test for impulse_response
t = 0:0.1:1000;
x = sin(t);
y = cos(t);
Fs = 1000;
impulse_response(x,y,Fs);