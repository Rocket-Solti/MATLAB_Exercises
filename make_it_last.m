function varargout = make_it_last(varargin)
% MAKE_IT_LAST MATLAB code for make_it_last.fig
%      MAKE_IT_LAST, by itself, creates a new MAKE_IT_LAST or raises the existing
%      singleton*.
%
%      H = MAKE_IT_LAST returns the handle to a new MAKE_IT_LAST or the handle to
%      the existing singleton*.
%
%      MAKE_IT_LAST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAKE_IT_LAST.M with the given input arguments.
%
%      MAKE_IT_LAST('Property','Value',...) creates a new MAKE_IT_LAST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before make_it_last_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to make_it_last_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help make_it_last

% Last Modified by GUIDE v2.5 11-Jan-2019 15:45:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @make_it_last_OpeningFcn, ...
                   'gui_OutputFcn',  @make_it_last_OutputFcn, ...
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


% --- Executes just before make_it_last is made visible.
function make_it_last_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to make_it_last (see VARARGIN)

% Choose default command line output for make_it_last
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes make_it_last wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = make_it_last_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

[filename,pathname] = uigetfile('*.xlsx', 'Chose files to load:','MultiSelect','on');
nfiles = length(filename);
for k = 1:nfiles
  file = fullfile(filename,pathname(k));
end

S=load (filename);
newfile=S;
x=newfile(:,1);
y=newfile(:,2);
plot(x,y,'m','lineWidth',2);




% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

[filename,pathname] = uigetfile('*.xlsx', 'Chose files to load:','MultiSelect','on');
nfiles = length(filename);
for k = 1:nfiles
  file = fullfile(filename,pathname(k));
end

guidata(hObject, handles);
set(handles.listbox1, 'String', fullfile(filename,pathname));
S=load (filename);
newfile=S;
x=newfile(:,1);
y=newfile(:,2);
plot(x,y,'m','lineWidth',2);
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname] = uigetfile('*.xlsx', 'Chose files to load:','MultiSelect','on');
nfiles = length(filename);
for k = 1:nfiles
  file = fullfile(filename,pathname(k));
end

S=load (filename);
newfile=S;
x=newfile(:,1);
y=newfile(:,2);
plot(x,y,'m','lineWidth',2);

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
function_title=handles.listbox1.String;
list_idx=handles.listbox1.Value;
switch list_idx
    case 1
        data=filename;
        x=mean(filename);
            plot(x);
                grid on
                title(function_title(1));
    case 2
        data=filename;
        x=std(filename);
            plot(x);
                grid on
                title(function_title(2));
end       

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
hObject.String={'mean(filename)','std(filename)'};

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
