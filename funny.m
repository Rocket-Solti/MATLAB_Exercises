%%
char1=input(['who is sexy:'],'s');
switch char1
    case 'Shusma'
        disp('hey!you are right man')
    otherwise 
        switch char1 
            case {'Radhe', 'Diwas'}
                disp('Exactly')
            case{'Amrit'}
                disp('No way')
            otherwise 
                disp('That can not be true')
        end
end

%%
char1=input(['Who is your daddy:'],'s')
switch char1
    case 'Baal ho'
        disp('Daddy Swami JI')
    otherwise
       switch char1
    case('jpt')
        disp('Simsime pani')
       end
end

