%% Jasen Carroll - Homework 4
%% Problem 1
% Part A - "p1 and p2 are not equal"
% Part B - from negative infinity to 3 but not including 3, then from ten to infiniti but not including ten
% Part C - from zero to 7 but not including 7
% Part D - 
a = 0
if -0.01 < a < 0.01
    disp('a is very close to zero')
end
%% Problem 2
% Part A - 10 times
% Part B - Infinite 
% Part C - 1,2,4,8,16,32,64
% Part D - 1,2,6,24,120
%% Problem 3 
% Part A 
roman2dec_old_jcc329('IX')
roman2dec_old_jcc329('XI')
% Part B
roman2dec_new_jcc329('IV')
roman2dec_new_jcc329('IX')
roman2dec_new_jcc329('XL')
roman2dec_new_jcc329('XC')
roman2dec_new_jcc329('CD')
roman2dec_new_jcc329('CM')
%% Problem 4
clear
x1 = 'Insert Money';
x2 = 'Make Selection';
x3 = 'Vending Item';
x4 = 'Returning Change';
disp(x1)
a = input('Enter Amount of Money Inserted ','s')
a = str2num(a);
if (a >= 1.5)
    disp(x2)
    n = input('Choose Item by Number (1-10): ','s')
    n = str2num(n);
    if (n == 3 || n == 7)
        u = input('Item currently unavailable, press 1 for refund or 2 for new item','s')
        u = str2num(u);
        switch u
            case 1
                disp(x4)
            case 2
                disp(x2)
                n = input('Choose Item by Number (1-10): ','s')
        end
    else
        disp(x3)
        if a > 1.5
            disp(x4)
        end
    end
else
    disp('The cheapest item is $1.50, try again next time')
    disp(x4)
end