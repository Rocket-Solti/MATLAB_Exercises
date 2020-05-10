% % 
% % handles.i = 1;
% % handles.k = length(files);
% % handles.files = files;
% % guidata(hObject, handles);
% --- Executes on selection change in plotbox.
function listbox_Callback(hObject, eventdata, handles)
files = handles.files;
i=handles.i;
axes(handles.plotty);
listbox_index=get(hObject, 'Value');
switch listbox_index
    case 1
[data,~,~] = xlsread(files{i});
x = 1:6;
plot(x, data(1:end))
    case 2
[data,~,~] = xlsread(files{i});
x = 2:7;
plot(x, data(1:end))
    case 3
[data,~,~] = xlsread(files{i});
x = 4:9;
plot(x, data(1:end))
end
% --- Executes on button press in NextButton.
function NextButton_Callback(hObject, eventdata, handles)
%some code  
guidata(hObject, handles)