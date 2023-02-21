
% Loop Explanation**
% We need to use while loop,because we dont know the time when the value of car will under %30 and it will keep going untill it is under a certain percent

carpurchasedYear = input("Please type which year you purchase your car = ");
percentage = 100;
afterYears = 1;
% To start calculating,writing the year the car was purchased
yearsum = carpurchasedYear + afterYears;

while percentage > 70
    afterYears = afterYears+1;
    yearsum = carpurchasedYear + afterYears;
    % Checking whether the year is even or not
    if mod(yearsum, 2) == 0
        percentage = percentage - (percentage * 5 / 100);
        % Checking again if year is not even
    else
        percentage = percentage - (percentage * 3 / 100);
    %Percentage details and percentages calculations controlling by loop
    end
end

% The last amount of problem is printing on screen by fprintf command
fprintf("Final price will get under %%30 after %d years\n", afterYears)
