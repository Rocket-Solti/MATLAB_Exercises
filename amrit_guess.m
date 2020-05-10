%%
%% pick a random number for the user to guess
answer=randi(100);
guess=0;
%5ask the user to make a first guess
%%
num_guesses=0;
while  guess~= answer
guess=input('Guess any number from 1 to 100:')
%increment of number of guesses
num_guesses=num_guesses+1
%tell the user if their guess was too high or low
if guess < answer
    fprintf('Your guess %d was too low!\n',guess)
elseif guess >answer
    fprintf('Your guess %d was too high!\n',guess)
else 
    fprintf(' congrats !Your guess %d is right\n',guess)
    fprintf('You only did it in %d try \n',num_guesses)
end
end
