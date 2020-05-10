function varargout = Gui_counter(varargin)
% GUI_COUNTER MATLAB code for Gui_counter.fig
%      GUI_COUNTER, by itself, creates a new GUI_COUNTER or raises the existing
%      singleton*.
%
%      H = GUI_COUNTER returns the handle to a new GUI_COUNTER or the handle to
%      the existing singleton*.
%
%      GUI_COUNTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_COUNTER.M with the given input arguments.
%
%      GUI_COUNTER('Property','Value',...) creates a new GUI_COUNTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui_counter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui_counter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui_counter

% Last Modified by GUIDE v2.5 12-Dec-2018 12:39:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui_counter_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui_counter_OutputFcn, ...
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


% --- Executes just before Gui_counter is made visible.
function Gui_counter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gui_counter (see VARARGIN)

% Choose default command line output for Gui_counter
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gui_counter wait for user response (see UIRESUME)
% uiwait(handles.figure1);
handles.counter=hObject;
handles.counter=0;
guidata(hObject,handles)

% --- Outputs from this function are returned to the command line.
function varargout = Gui_counter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton_1.
function pushbutton_1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.counter=handles.counter+1;
guidata(hObject,handles);
set(handles.textResult,'string',num2str(handles.counter));
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.counter=handles.counter-1;
guidata(hObject,handles);
set(handles.textResult,'string',num2str(handles.counter))