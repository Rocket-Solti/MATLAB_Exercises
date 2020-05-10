function varargout = GUI_plot12(varargin)
% GUI_PLOT12 MATLAB code for GUI_plot12.fig
%      GUI_PLOT12, by itself, creates a new GUI_PLOT12 or raises the existing
%      singleton*.
%
%      H = GUI_PLOT12 returns the handle to a new GUI_PLOT12 or the handle to
%      the existing singleton*.
%
%      GUI_PLOT12('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_PLOT12.M with the given input arguments.
%
%      GUI_PLOT12('Property','Value',...) creates a new GUI_PLOT12 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_plot12_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_plot12_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_plot12

% Last Modified by GUIDE v2.5 15-Dec-2018 12:34:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_plot12_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_plot12_OutputFcn, ...
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


% --- Executes just before GUI_plot12 is made visible.
function GUI_plot12_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_plot12 (see VARARGIN)

% Choose default command line output for GUI_plot12
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_plot12 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_plot12_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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


hObject.String = {'sin(x)', 'cos(x) ', 'tan(x) '};

function pushbuttonPlot_Callback(hObject, eventdata, handles)
% hObject handle to pushbuttonPlot (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
%********************** THIS IS MY CODE **********************
% Get the plot and the title of the plot from the popup menu
% function_title = get(handles.popupmenuChooseFunction,'String'); % old Method
function_title = handles.popupmenuChooseFunction.String;
% Check which function is chosen by reading out the index of the popup
% menu
% popup_idx = get(handles.popupmenuChooseFunction, 'Value'); % old Method
popup_idx = handles.popupmenuChooseFunction.Value;
% Plot the chosen function
switch popup_idx
case 1
 x=-2*pi:0.1:2*pi;
 plot(x,sin(x));
 grid
 title(function_title(1));
case 2
 x=-2*pi:0.1:2*pi;
 plot(x,cos(x));
 grid
 title(function_title(2));
case 3
 x=-pi/4:0.1:pi/4;
 plot(x,tan(x));
 title(function_title(3));
 grid
end
