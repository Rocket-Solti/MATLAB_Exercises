%%Import Excel Files
[fName,pName] = uigetfile('*.xlsx','Choose files to load:','MultiSelect','on');
     if pName == 0, return; end
 files_in_this_folder=dir;
 nFiles=length(fName)
 idx=1;
for idx =1:nFiles
    filename=[fName,pName];
    if strcmpi(filename(end-4:end),'.xlsx')
       
    end
end

[num,txt,raw] = xlsread(fName);
   B=xlsread(fName);

   X=B(:,1);%first column of the excel file
   Y=B(:,2);%second column of the excel file
   Z=B(:,3);%third column of the excel file

    %% Plotting Excel Files
% plot(X);
% plot(Y);
% plot(Z);
% hold on
plot(Y,Z);

% 2-D plot
% plot3(X,Y,Z);%3-d plot
%it depends upon the file we are plotting
%% Labelling the figure
xlabel('\textit{x}/a.u.','Interpreter','latex');
 ylabel('\textit{y}/a.u.','Interpreter','latex');
%% Title to the Excel Figure
title('Plotting Excel Data ');
     saveas(gcf,[fName(1:end-4),'plot.png'])%% we can directly save our file as png ,but we also did it in other button;
set(handles.listbox1, 'String', filename);