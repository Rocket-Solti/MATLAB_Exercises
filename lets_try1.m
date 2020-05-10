[fName,pName] = uigetfile();
     if pName == 0, return; end
% files_in_this_folder=dir;
 nFiles=length(fName)
 idx=1;
for idx =1:nFiles
    filename=[fName,pName];
    if strcmpi(filename(end-4:end),'.xlsx')
       [num,txt,raw] = xlsread(fName);end
   B=xlsread(fName);
        figure(1), clf
        
         
          plot(B);
    end
% %   if contains (filename(end-4:end),'.txt')
% %        A=load(fName);
% %        figure(2), clf
% %        % subplot(1,2,1)
% %        % plot(A(:,1),A(:,2));
% %         %hold on
% %          plot(A);
% %    end
% %    if contains (filename(end-4:end),'.mat')
% %        B=load(fName);
% %        figure(3), clf
% %        % subplot(1,2,1)
% %        % plot(B(:,2),B(:,3));
% %         %hold on
% %          plot(B);
% %    end
% %     if contains (filename(end-4:end),'.dat')
% %        C=load(fName);
% %        figure(4), clf
% %         %subplot(1,2,1)
% %         %plot(C(:,2),C(:,3));
% %        % hold on
% %          plot(C);
% %    end
% % % %     figure(1), clf
% % % %         subplot(1,2,1)
% % % %         plot(num(:,1),num(:,2));
% % % %         hold on
% % % %          plot(num);
% %          
         
         
         

% % %   num=xlsread(fName);
% % %         figure(1), clf
% % %         subplot(1,2,1)
% % %         plot(num(:,2),num(:,3));
% % %         hold on
% % %         plot(num)
% % %         saveas(gcf,[fName(1:end-4),'plot.png'])
function myprogram2
    f = figure('WindowStyle','normal');
    c = uicontextmenu(f);

    % Assign the uicontextmenu to the figure
    f.UIContextMenu = c;

    % Create child menu of the uicontextmenu
    topmenu = uimenu('Parent',c,'Label','Change Color');
    
    % Create submenu items
    m1 = uimenu('Parent',topmenu,'Label','Red','Callback',@changecolor);
    m2 = uimenu('Parent',topmenu,'Label','Green','Callback',@changecolor);

    function changecolor(source,callbackdata)
        switch source.Label
            case 'Red'
                f.Color = [1.0 0.80 0.80];
            case 'Green'
                f.Color = [0.80 1.0 0.80];
        end
    end
end