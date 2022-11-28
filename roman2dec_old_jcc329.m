function n=roman2dec_old_jcc329(x)
% Jasen Carroll
% 1/26/2011
% References: mathworks.com and roma2num.m by François Beauducel
error(nargchk(1,1,nargin)) % makes sure the correct number of inputs are entered
if ischar(x) % makes sure x is a char
	x = {x};
end

r = 'IVXLCDM'; % sets a string
d = [1, 5, 10, 50, 100, 500, 1000]; % values of each Roman numerals

n = zeros(size(x)); % sets a matrix as long as x

for k = 1:numel(x) % for k = 1 until k = x the length of x
	nn = 0; % another variable used as a holder
	jj = x{k}; 
	if all(ismember(jj,r)) % makes sure all of jj is a member of the string r
		for i = 1:length(jj)
			v0 = d(findstr(r,jj(i))); % assigns the correct value to the correct jj
			nn = nn + v0; % adds v0 to jj
        end
        n(k) = nn;
    end
end
