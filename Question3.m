% Affan Selim Kaya 
% 200709006
% Computer Engineering (Eng)
% Introduction to Programming 
% CEN103
% 2020-2021 1st Somestr
% Project 2 Question 3
% Asst.Prof. Deniz Dal

% Loop Explanation
%In this example, we know how many times the loop will work and we can control how many times we flip, so a for loop should be best to use.

% Giving logical values to heads and tails options
heads = 0;
tails = 0;

% Taking flip-time for start calculate
flipThatTimes = input("How many times did you flip a coin? ");

flipResult = round(rand(flipThatTimes,1));


% Repeat with coin conversions
% We need repeat code untýl ýts all possýbýlýtys calculated
% For an example,ýf we have 2 flips,then we can have 1tails 1heads ,2heads 0tails or 2tails 0heads

for j=1:flipThatTimes
    if flipResult(j) == 0
        tails = tails + 1;
    end
    if  flipResult(j) == 1
        heads = heads + 1;
    end
end

fprintf("Number of flips: %d \n", flipThatTimes)
% (%d) is the how many times we flipped the coin 
fprintf("%d tails\n",tails)
fprintf("Tail percentage is %%%d\n", tails/flipThatTimes*100)
fprintf("%d heads\n",heads)
fprintf("Head percentage is %%%d\n", heads/flipThatTimes*100)
