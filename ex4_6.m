str = input(['word'...
' to see if it rhymes with bird: '],'s');
switch str
case 'bird'
disp('Hey! You can’t pick the word bird!')
otherwise
switch str((end-2):end)
case {'ird', 'urd'}
disp('Your word rhymes!')
case {'ord'}
disp('Your word may or may not rhyme!')
otherwise
disp('Your word probably doesn’’t rhyme with bird !')
end
end
