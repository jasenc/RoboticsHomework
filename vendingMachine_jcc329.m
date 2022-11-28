% Vending Machine
% Jasen Carroll
% 1/26/2011
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

            