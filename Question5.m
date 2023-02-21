

enteredMonths = input("Please type how many months you worked at this place = ");
% We are asking employee how many months he/she spend at that workplace?

monthlyIncome = 100;
givenBonus = 0;
raiseRate = monthlyIncome*10/100;

%Once we entered a month number,our code will start making calculations
%In ...months and bonus against first salary
for i=1:enteredMonths
    if mod(i,12) == 0
 %Since a raise is made every 12 months, we adjust the bonus to 10% bonus every 12 months.
        monthlyIncome = monthlyIncome + raiseRate;
        givenBonus = givenBonus + monthlyIncome * 1 / 100;
    else
        givenBonus = givenBonus + monthlyIncome * 1 / 100;
    end
end

% Calculated bonus against first salary will printed by fprintf command
fprintf("In %d months:\n",enteredMonths)
fprintf("%%%g of the first salary given as bonus.\n",givenBonus)
