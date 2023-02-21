
% Loop Explanation**
% On the example they want us to code go on untýll we type -1,so we need to use while loop

numericVal = input("Please enter a numeric value = ");
% Starting with typing a numeric value 
% Code will want us type numeric values until we type -1

% Using first entered number as a reference point
questiond = numericVal;
questione = numericVal;
questionf = numericVal;

%Checking if number matches the condition if so add to the calculations
if numericVal > 0 && numericVal ~= round(numericVal)
% if float and positive
    questiona = number;
    questiona_counter = 1;
else
    questiona = 0;
    questiona_counter = 0;
end

%Checking these conditions before loop because other questions require pre-declaretion
%Checking if number matches the condition if so add to the calculations
if mod(numericVal,2) == 1 && numericVal < 0 && numericVal == round(numericVal)
% if integer odd and negative
    questionb = number;
    questionb_counter = 1;
else
    questionb = 0;
    questionb_counter = 0;
end

%Checking if number matches the condition if so add to the calculations
if numericVal > 0 && mod(numericVal,2) == 0 && numericVal == round(numericVal)
% positive even integer
    questionc = numericVal;
    questionc_counter = 1;
else
    questionc = 1;
    questionc_counter = 0;
end

% If we want to calculate questýona,we need type a value like 1.2
% If we not type a number like that,our questýona says NaN to us

% Here is actual loop
while numericVal ~= -1
    numericVal = input("Please enter a numeric again = ");
    % If floating-point
    if numericVal ~= round(numericVal)
        % If biggest number
        if numericVal > questionf
            questionf = numericVal;
        end
        % Smallest float here
        if numericVal < questione
            questione = numericVal;
        end
        if numericVal > 0
            % If float and positive then take the arithmetic mean
            questiona = questiona + numericVal;
            questiona_counter = questiona_counter + 1;
        end
        
    % If integer
    else
        % If biggest
        if numericVal > questionf
            questionf = numericVal;
        end
        % Negative odd integer
        if numericVal > 0 && mod(numericVal,2) == 0
            % If integer and negative and odd then taking the arithmetic mean
            questionc_counter = questionc_counter + 1;
            questionc = numericVal * questionc;
        % Positive even integer

        elseif mod(numericVal,2) == 1 && numericVal < 0 
            % If integer and positive and even then taking the geometric mean
            questionb_counter = questionb_counter + 1;
            questionb = 1/numericVal + questionb;

        end
        % Negative odd integer
        if numericVal < 0 && mod(numericVal,2) == 1 && numericVal > questiond
            questiond = numericVal;
        end
    end
end       
if questionf==round(questionf)
    questionf = 1;
else
    questionf = 0;
end

% Waiting the while loops ends (It will end when we type -1)
% Checking 1 and 0's for to be sure

% Controlling and printing values on command screen if the wanted value entered
% If mathemathican didnt type -1 as numeric value,code will keep runing
% Also,ýf we type enter button wýthout a numeric,we will get a error

fprintf("a) arithmetic mean of positive floating-point numbers = %g\n", questiona/questiona_counter)
fprintf("b) harmonic mean of negative odd integers = %g\n", questionb_counter/questionb)
fprintf("c) geometric mean of positive even integers= %g\n", (questionc)^(1/questionc_counter))
fprintf("d) largest negative odd integer= %d\n", questiond)
fprintf("e) smallest floating-point number= %g\n", questione)
fprintf("f) is largest number integer= %d\n", questionf)
