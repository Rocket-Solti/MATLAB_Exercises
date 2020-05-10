function varargout = project_work(varargin)
% PROJECT_WORK MATLAB code for project_work.fig
%      PROJECT_WORK, by itself, creates a new PROJECT_WORK or raises the existing
%      singleton*.
%
%      H = PROJECT_WORK returns the handle to a new PROJECT_WORK or the handle to
%      the existing singleton*.
%
%      PROJECT_WORK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT_WORK.M with the given input arguments.
%
%      PROJECT_WORK('Property','Value',...) creates a new PROJECT_WORK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_work_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_work_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project_work

% Last Modified by GUIDE v2.5 15-Jan-2019 11:32:44

% Begin initialization code - DO NOT EDIT
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
% End initialization code - DO NOT EDIT


% --- Executes just before project_work is made visible.
function project_work_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project_work (see VARARGIN)

% Choose default command line output for project_work
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project_work wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_work_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)




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
guidata(hObject, handles);
[num,txt,raw] = xlsread(fName);
   B=xlsread(fName);
   
   X=num(:,1);
   Y=num(:,2);
   Z=B(:,3);
    
% h=gca;
% %  get(h)
% %h_fig=figure(1);
% 
% %h_fig.Position=[648,99,620,420];
% h_ax1=axes;
axes(handles.axes1) ;
% % h_ax1.FontSize=12;
% % h_py1=plot(Y,Z);
% % %hold(h_ax1,'on')
% % h_py2=plot(h_ax1,Y,Z);
% % h_py1.Color=[0, 0 ,1];
% % h_py1.Marker='*';
% % h_py1.LineStyle='...';
% % h_leg=legend('data1','data2');
% % h_an=annonation(h_fig,'textbox',[0.71,0.007,0.16,0.06],'String','Matlab_project');
% % h_xlabel=xlabel(h_ax1,'X-Component');
% % x_label.Fontsize=10;
% % h_ylabel=ylabel(h_ax1,'Y-Component');
% % y_label.Fontsize=10;

%      plot(X,Y);
%      hold on
 b= plot(X,Y,'k','lineWidth',2)
%plot(num);
          %plot(B);
a=imread(b);
imshow(b)
% % xlabel('\textit{x}/a.u.','Interpreter','latex');
% %  ylabel('\textit{y}/a.u.','Interpreter','latex');
% % title('Plotting Excel Data ');

set(handles.listbox1, 'String', filename);

 
     




% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
handles.listbox1 = hObject;

% Update handles structure


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1



% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





% --- Executes on selection change in listbox2.
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
 y=A(:,2)

% %  figure;
% %  h_fig=figure;

%h_fig.Position=[648,99,620,420];
% % h_ax1=axes;
axes(handles.axes1) ;

plot(x,y,'m','lineWidth',2);
 xlabel('\textit{x}/a.u.','Interpreter','latex');
  ylabel('\textit{y}/a.u.','Interpreter','latex');
 title('Plotting Simple Data ');
 
 
set(handles.listbox2, 'String', filename)


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
handles.listbox2 = hObject;

% Update handles structure


% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.axes1,'values')

c = uisetcolor([1 1 0],'Select a color')
set(h_fig,'Color','y')
get(h_fig,'color','y')
% % % ;
% % % mymap = colormap(ax);
 c = uisetcolor([1 1 0],'Select a color')
% % % c=get(handles.axes1,'value');
% % % switch c
% % %     
% % % case1 
% % % if c ==uisetcolor(['yellow']);
% % %     results= fig.Color([1 1 0]);
% % % elseif Index_Select ==(2);
% % %     result =Function2()
% % % elseif Index_Select==3;
% % %     result =Function3();
% % % end