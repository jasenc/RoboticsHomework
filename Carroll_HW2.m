%% Homework 2 - Jasen Carroll
%% Question 1
%% Part i
clear
clc
syms x y % let x = theta and y = phi
Rz = [cos(x) -sin(x) 0; sin(x) cos(x) 0; 0 0 1]; % Rotation about the z axis
Rx = [1 0 0; 0 cos(y) -sin(y); 0 sin(y) cos(y)]; % Rotation about the y axis
R = Rz*Rx

%% Part ii
R = Rx*Rz % The resulting rotation matrix is not the same as the previous
%% Part iii
x = 45*(pi/180);
y = 60*(pi/180);
Rz = [cos(x) -sin(x) 0; sin(x) cos(x) 0; 0 0 1];
Rx = [1 0 0; 0 cos(y) -sin(y); 0 sin(y) cos(y)];
R = Rz*Rx
%% Question 2
clear
syms x y % let x = theta and y = fi
A = [cos(y) 0 sin(y) 1;sin(y)*sin(x) cos(x) -cos(y)*sin(x) 0;
-sin(y)*cos(x) sin(x) cos(y)*cos(x) 0; 0 0 0 1];
B = inv(A)
%% Question 3
%% Transformation Matrix
clear
x = 90*(pi/180); % let x = theta
y = 180*(pi/180); % and y = phi
Ry = [cos(x) 0 -sin(x); 0 1 0; sin(x) 0 cos(x)]; % Rotation about the z axis
Rx = [1 0 0; 0 cos(y) -sin(y); 0 sin(y) cos(y)]; % Rotation about the y axis
T = Ry*Rx
%% Ranges from x0, y0 and z0
Min = [ 2; -3; 5]
Max = [15; -20; 35]
% Therefore the reachable work space seems to be 15 in the positive x0
% direction, 20 in the negative y0 direction and 35 in the positive z0
% direction. 
%% Question 4 - Fibonacci Series
% References - Yahoo Answers,
%              Matlab Help Forum
clear
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
%% Question 5 - Estimating PI
k = 0; 
PI = 0;
for (k=0:1000000)
    k+1;
    PI = PI+4*(((-1)^k)/(2*(k)+1));
end
k
PI
