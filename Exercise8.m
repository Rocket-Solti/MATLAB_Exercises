out=questdlg('Would you like to log in?',...
       'Login',...
       'yes',...
       'No',...
  'Yes');
Login.username='Amrit';
Login.password='solta12';
%%
input = questdlg('Would you like to log in?','Yes','No') 

if input=='Yes'
    input = inputdlg('Username','Password','Log in')

end
answer = questdlg(quest)
 if 'yes'
     inputdlg('login.username','login.password','login?')
 end
     %%
    
 input = questdlg('Would you like to log in?','Yes','No') 
 if input== 'Yes'%%
prompt = {'login.username:','login.password:'};
title = 'login';
dims = [1 35];
definput = {'',''};
answer = inputdlg(prompt,title,dims,definput)
 end

%%
if exist ('answer','var')
 char1=inputdlg(['login.username:'],'s');
 char2=inputdlg(['password:'],'s');
switch char1
    case inputdlg('Amrit')
        switch char2
    case inputdlg('solta12')
       
        box=msgbox('You are sucessfully loged on')
        uiwait(box)
        end

            otherwise 
                box=msgbox('Try again')
                uiwait(box)
       
end
end

%%** start from here**%%
%% 1
login.username='Amrit';
login.password='Solti12';
%% 2
Button=questdlg('Would you like to log in?',...
       'Login',...
       'Yes',...
       'No',...
  'Yes');
%answer = inputdlg(question,title,dims,definput)

%% 3
if strcmp(Button,'Yes')
prompt = {'username:','password:'};
title = 'Login';
%dims = [1 20];
%definput = {'',''};
answer = inputdlg(prompt,title)
end
%% 3 other method
% if strcmp(out,'Yes')
%     log_input=inputdlg({'username:','password:'},'Login')
% end

%% 4
if exist ('Button','var');
    if strcmp(Login,username,prompt{1})&&strcmp(Login,password,prompt{2});
        box=msgbox('You are sucessfully logged in')
        uiwait(box) %avoid proceeding till closed
    else
        box=msgbox('please try again!','warning','warn')
        uiwait(box)
    end
end
%%
if exist ('out','var');
    if strcmp(login.username,log_input{1})&&strcmp(login.password,login);
        box=msgbox('You are sucessfully logged in')
        uiwait(box) %avoid proceeding till closed
    else
        box=msgbox('please try again!','warning','warn')
        uiwait(box)
    end
end
%% my method
if exist ('answer','login.username','login.password');
swtich answer
case yes
    
    box=msgbox('You are sucessfully logged in')
        uiwait(box) %avoid proceeding till closed
        otherwise
            
   box=msgbox('please try again!','warning','warn')
        uiwait(box)
end
%%ASK!!!%%
%% 5
login(1).Usernmae='User1';
login(1).password='pass1';

login(2).Usernmae='User2';
login(2).password='pass2';

login(3).Usernmae='User3';
login(3).password='pass3';

login(4).Usernmae='User4';
login(4).password='pass4';

save login;
clear login;

%% 6
log=inputdlg({'Username:','password:'},'Login');
for k=1:size(login,2)
    if strcmp(login(k),Username,log{1}) && srtcmp(login(k),password,log{2})


