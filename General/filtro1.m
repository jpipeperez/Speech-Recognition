function y = filtro1(x)
%FILTRO1 Filters input x and returns output y.

%
% MATLAB Code
% Generated by MATLAB(R) 7.14 and the DSP System Toolbox 8.2.
%
% Generated on: 26-Nov-2013 10:57:07
%

persistent Hd;

if isempty(Hd)
    
    Fpass = 11000;  % Passband Frequency
    Fstop = 12000;  % Stopband Frequency
    Apass = 1;      % Passband Ripple (dB)
    Astop = 60;     % Stopband Attenuation (dB)
    Fs    = 22000;  % Sampling Frequency
    
    h = fdesign.lowpass('fp,fst,ap,ast', Fpass, Fstop, Apass, Astop, Fs);
    
    Hd = design(h, 'equiripple', ...
        'MinOrder', 'any', ...
        'StopbandShape', '1/f');
    
    
    
    set(Hd,'PersistentMemory',true);
    
end

y = filter(Hd,x);


% [EOF]
