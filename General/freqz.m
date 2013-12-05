function [h,w] = freqz(b,a,n,dum)
%FREQZ	Z-transform digital filter frequency response.
%	When N is an integer, [H,W] = FREQZ(B,A,N) returns
%	the N-point frequency vector W and the
%	N-point complex frequency response vector G of the filter B/A:
%	                            -1                -nb 
%	     jw	 B(z)   b(1) + b(2)z + .... + b(nb+1)z
%	  H(e) = ---- = ----------------------------
%	                            -1                -na
%		 A(z)    1   + a(2)z + .... + a(na+1)z
%	given numerator and denominator coefficients in vectors B and A. The
%	frequency response is evaluated at N points equally spaced around the
%	upper half of the unit circle. To plot magnitude and phase of a filter:
%	          [h,w] = freqz(b,a,n);
%	          mag = abs(h);  phase = angle(h);
%	          semilogy(w,mag), plot(w,phase)
%	FREQZ(B,A,N,'whole') uses N points around the whole unit circle.
%	FREQZ(B,A,W) returns the frequency response at frequencies designated
%	in vector W, normally between 0 and pi. (See LOGSPACE to generate W).
%	See also YULEWALK, FILTER, FFT, INVFREQZ, and FREQS.

% 	J.N. Little 6-26-86
%	Revised 6-7-88 JNL, 9-12-88 LS
%	Copyright (c) 1985-1992 by the MathWorks, Inc.

a = a(:).';
b = b(:).';
na = max(size(a));
nb = max(size(b));
nn = max(size(n));
s = 2;
if nargin == 4
	s = 1;
end
if nn == 1
	w = (2*pi/s*(0:n-1)/n)';
else
	w = n;
	n = nn;
end
if (nn == 1)
	if s*n < na | s*n < nb
		nfft = lcm(n,max(na,nb));
		h = (fft([b zeros(1,s*nfft-nb)]) ./ fft([a zeros(1,s*nfft-na)])).';
		h = h(1+(0:n-1)*nfft/n);
	else
		h = (fft([b zeros(1,s*n-nb)]) ./ fft([a zeros(1,s*n-na)])).';
		h = h(1:n);
	end
else
%	Frequency vector specified.  Use Horner's method of polynomial
%	evaluation at the frequency points and divide the numerator
%	by the denominator.
	a = [a zeros(1,nb-na)];  % Make sure a and b have the same length
	b = [b zeros(1,na-nb)];
	s = exp(sqrt(-1)*w);
	h = polyval(b,s) ./ polyval(a,s);
end
