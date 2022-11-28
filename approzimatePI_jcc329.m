%% Approzimating PI - Jasen Carroll
k = 0; 
PI = 0;
for (k=0:1000000)
    k+1;
    PI = PI+4*(((-1)^k)/(2*(k)+1));
end
k
PI