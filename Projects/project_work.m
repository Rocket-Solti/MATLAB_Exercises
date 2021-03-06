%% PLOT ANY DATA


function varargout = project_work(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_work_OpeningFcn, ...
                   'gui_OutputFcn',  @project_work_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end



function project_work_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = project_work_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function listbox1_Callback(hObject, eventdata, handles)

%%Import Excel Files
[fName,pName] = uigetfile('*.xlsx','Choose files to load:','MultiSelect','on');
     if pName == 0, return; end
% files_in_this_folder=dir;
 nFiles=length(fName)
 idx=1;
for idx =1:nFiles
    filename=[fName,pName];
    if strcmpi(filename(end-4:end),'.xlsx')
       
    end
end

[num,txt,raw] = xlsread(fName);
   B=xlsread(fName);
  guidata(hObject, handles); 
   X=B(:,1);%first column of the excel file
   Y=B(:,2);%second column of the excel file
   Z=B(:,3);%third column of the excel file
    %for plotting each columns
    %% Plotting Excel Files
% plot(X);
% plot(Y);
% plot(Z);
% hold on
plot(Y,Z);% 2-D plot
% plot3(X,Y,Z);%3-d plot
%it depends upon the file we are plotting
axes(handles.axes1)
 pl = plot(Y,Z);
% pl=plot(X);
% pl=plot(y);
% pl=plot(z);
handles.pl= pl;
guidata(hObject, handles);

% so that pl is stored as plot of our file
%% Labelling the figure
xlabel('\textit{x}/a.u.','Interpreter','latex');
 ylabel('\textit{y}/a.u.','Interpreter','latex');
%% Title to the Excel Figure
title('Plotting Excel Data ');
     %saveas(gcf,[fName(1:end-4),'plot.png'])%% we can directly save our file as png ,but we also did it in other button;
set(handles.listbox1, 'String', filename);

 
    

function listbox1_CreateFcn(hObject, eventdata, handles)

handles.listbox1 = hObject;


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%% Import Text Files
    
function listbox2_Callback(hObject, eventdata, handles)

[fName,pName] = uigetfile('*.txt','Choose files to load:','MultiSelect','on');
     if pName == 0, return; end
%files_in_this_folder=dir;
 nFiles=length(fName)
 idx=1;
for idx =1:nFiles
    filename=[fName,pName];
    if strcmpi(filename(end-4:end),'.txt')
       
    end
end
 A=load(fName);
 guidata(hObject, handles);
 x=A(:,1);
 y=A(:,2);
  %% Plotting Text Files
 pl = plot(x,y);
    handles.pl= pl;
    guidata(hObject, handles);
axes(handles.axes1) ; 
%% Labelling the figure
xlabel('\textit{x}/a.u.','Interpreter','latex');
  ylabel('\textit{y}/a.u.','Interpreter','latex');
  %% Title to the Text figure
 title('Plotting Sample Data ');      
     %saveas(gcf,[fName(1:end-4),'plot.png'])
set(handles.listbox2, 'String', filename)

function listbox2_CreateFcn(hObject, eventdata, handles)
handles.listbox2 = hObject;

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%% To choose the plot colors
function pushbutton10_Callback(hObject, eventdata, handles)
guidata(hObject, handles)
pl = handles.pl;
pl.Color = 'red';

function pushbutton11_Callback(hObject, eventdata, handles)
guidata(hObject, handles)
pl = handles.pl;
pl.Color = 'yellow';

function pushbutton12_Callback(hObject, eventdata, handles)
guidata(hObject, handles)
pl = handles.pl;
pl.Color = 'green';

%% To choose the linewidth of the plot

function pushbutton14_Callback(hObject, eventdata, handles)
guidata(hObject, handles)
pl = handles.pl;
pl.LineWidth = 1; 

function pushbutton15_Callback(hObject, eventdata, handles)
guidata(hObject, handles)
pl = handles.pl;
pl.LineWidth = 2; 

function pushbutton16_Callback(hObject, eventdata, handles)
guidata(hObject, handles)
pl = handles.pl;
pl.LineWidth = 3; 

function pushbutton17_Callback(hObject, eventdata, handles)
guidata(hObject, handles)
pl = handles.pl;
pl.LineWidth = 4; 

%% To change the background color
function popupmenu3_Callback(hObject, eventdata, handles)
guidata(hObject, handles)
x=get(hObject,'Value');
axes(handles.axes1);
switch x
    case 1
        set(gca,'Color','r') % r is for red color
    case 2
        set(gca,'Color','g') % g is for green color
    case 3
        set(gca,'Color','b') % b is  for blue color
    case 4
        set(gca,'Color','y')  %y is for yellow
    case 5
        set(gca,'Color','w')  %w is for white
    case 6
        set(gca,'Color',[ 1 0.6 0]) % orange color
    case 7
        set(gca,'Color',[ 0 1 1]) % cyan color
end

function popupmenu3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% For saving the figure
function radiobutton2_Callback(hObject, eventdata, handles)
guidata(hObject, handles)
axes(handles.axes1);
fh = figure;
copyobj(handles.axes1, fh);
