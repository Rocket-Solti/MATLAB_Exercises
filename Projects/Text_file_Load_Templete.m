[fName,pName] = uigetfile('*.txt','Choose files to load:','MultiSelect','on');
     if pName == 0, return; end
%files_in_this_folder=dir;
 nFiles=length(fName);
idx=1;
 for idx =1:nFiles
     filename=[fName,pName];
    if strcmpi(filename(end-4:end),'.txt')
             
     end
 end
   A=load(fName);
   plot(A);
%% Labelling the figure
xlabel('\textit{x}/a.u.','Interpreter','latex');
  ylabel('\textit{y}/a.u.','Interpreter','latex');
  %% Title to the Text figure
 title('Plotting Sample Data ');      
 saveas(gcf,[fName(1:end-4),'plot.png']) %% it will save the figure/plot