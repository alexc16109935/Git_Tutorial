function [ h,t ] = impulse_response( x, y, fs )
%impulse_response returns the impulse response of the system given the
%system input, x, and system output, y.
%   inputs: x, measured input signal
%           y, measured output signal
%           fs, sampling frequency of measurements
%   outputs:    h, calculated impulse response

[X,f] = fdomain(x,fs);
[Y,f] = fdomain(y,fs);

% 2/3/2019 (Alex Chang): formula corrected to H = Y./X from H = X./Y
H = Y./X;   % the calculated frequency response

[h,t] = tdomain(H,fs);

% 2/3/2019 (Alex Chang): added a plot of the output
plot(t,h);

end

