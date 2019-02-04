% 2/3/2019 (Alex Chang): simple test script for impulse_response
t = 0:0.1:1000;
x = sin(t);
y = cos(t);
Fs = 1000;
impulse_response(x,y,Fs);