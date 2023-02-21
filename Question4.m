

enteredNumber = input("Please enter a number for factorial calculation = ");
% We need to give an number to start factorial calculations

% If even number minus two:
if mod(enteredNumber,2) == 0
    enteredNumber = enteredNumber-2;
% If the odd number is minus one

else
    enteredNumber = enteredNumber-1;
end

% The given number should not be divided by 5 
if mod(enteredNumber,5) == 0
    enteredNumber = enteredNumber-2;
end

% Even numbers smaller than itself, not divisible by 5, are taken with the factorial of its neighbor and represented by% d.
% After final calculations,factorial of neighboor number printing by fprintf
fprintf("Factorial of %d is:\n",enteredNumber)
fprintf("%d \n",factorial(enteredNumber))
