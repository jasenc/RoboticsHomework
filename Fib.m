%% Jasen Carroll - Fibonacci Series
% References - Yahoo Answers,
%              Matlab Help Forum

%% First 10 values
length=10; %How long the series needs to be
F=zeros(length,1); %Creating vector for numbers
F(1)=0; % Establishnig the first and second values of the vector being
F(2)=1; % F(0) = F(1) = 1
for i=3:length % for loop from the next needed vector until length
    F(i)=F(i)+F(i-1)+F(i-2); % Fibonacci Series itself
end
F % Prints F containing the first 10 numbers of the series

%% Even Numbers

length=21; % The first 6 even numbers occur in the first 21 numbers of the
           % Fibonacci Series
F=zeros(length,1); %Creating vector for numbers
e=zeros(6,1); %Creating vector for even numbers
F(1)=0; % Establishnig the first and second values of the vector being
F(2)=1; % F(0) = F(1) = 1
k=0; % Will be used as a counter inside the loops
for i=3:length % for loop from the next needed vector until length
    F(i)=F(i)+F(i-1)+F(i-2); % Fibonacci Series itself
    if (mod(F(i),2)==0) % if the number is even
        e(1+k,1)=F(i); % it will get added to the even vector
        k=k+1; % counter used to put values in correct location of vector e
    end
end
e % Prints e containing the first 6 even values of the Fibonacci Series
