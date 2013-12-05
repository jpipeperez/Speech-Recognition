function f = strip(blocks, sumthresh, zerocrossthresh)

% This function removes leading and trailing blocks that do 
% not contain sufficient energy or frequency to warrent consideration.
% Total energy is measured by summing the entire vector.
% Frequency is measured by counting the number of times 0 is crossed.
% The parameters sumthresh and zerocrossthrech are the thresholds,
% averaged across each sample, above which consideration is warrented.

% A good sumthresh would be 0.035
% A good zerocrossthresh would be 0.060

len = length(blocks);
n = sum(size(blocks))-len;
min = n+1;
max = 0;
sumthreshtotal = len * sumthresh;
zerocrossthreshtotal = len * zerocrossthresh;
for i = 1:n
  currsum = sum(abs(blocks(i:len)));
  currzerocross = zerocross(blocks(i:len));
  if or((currsum > sumthreshtotal),(currzerocross > zerocrossthreshtotal))
    if i < min
      min = i;
    end
    if i > max;
      max = i;
    end
  end
end

% Uncomment these lines to see the min and max selected
max
min

if max > min
  f = blocks(min:max,1:len);
else
  f = zeros(0,0);
end

