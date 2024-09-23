function varargout = Project_Fuzzy(varargin)
% PROJECT_FUZZY MATLAB code for Project_Fuzzy.fig
%      PROJECT_FUZZY, by itself, creates a new PROJECT_FUZZY or raises the existing
%      singleton*.
%
%      H = PROJECT_FUZZY returns the handle to a new PROJECT_FUZZY or the handle to
%      the existing singleton*.
%
%      PROJECT_FUZZY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT_FUZZY.M with the given input arguments.
%
%      PROJECT_FUZZY('Property','Value',...) creates a new PROJECT_FUZZY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project_Fuzzy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project_Fuzzy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project_Fuzzy

% Last Modified by GUIDE v2.5 14-Jun-2024 00:17:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project_Fuzzy_OpeningFcn, ...
                   'gui_OutputFcn',  @Project_Fuzzy_OutputFcn, ...
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


% --- Executes just before Project_Fuzzy is made visible.
function Project_Fuzzy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project_Fuzzy (see VARARGIN)

% Choose default command line output for Project_Fuzzy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project_Fuzzy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project_Fuzzy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnclear.
function btnclear_Callback(hObject, eventdata, handles)
% hObject    handle to btnclear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.alur, 'String', "");
set(handles.akting, 'String', "");
set(handles.keterangan, 'String', "");
set(handles.Hasil, 'String', "");


% --- Executes on button press in btnhasil.
function btnhasil_Callback(hObject, eventdata, handles)
% hObject    handle to btnhasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
alur = str2double(get(handles.alur, 'String'));
akting = str2double(get(handles.akting, 'String'));
fis = readfis('Project_Fuzzy');
result = evalfis([alur akting], fis);
set(handles.Hasil, 'String', result);
if result <=5
    r2 = "Kurang Direkomendasikan";
else 
    r2 = "Direkomendasikan";
end
set(handles.keterangan, 'String', r2);



function alur_Callback(hObject, eventdata, handles)
% hObject    handle to alur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alur as text
%        str2double(get(hObject,'String')) returns contents of alur as a double


% --- Executes during object creation, after setting all properties.
function alur_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function akting_Callback(hObject, eventdata, handles)
% hObject    handle to akting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of akting as text
%        str2double(get(hObject,'String')) returns contents of akting as a double


% --- Executes during object creation, after setting all properties.
function akting_CreateFcn(hObject, eventdata, handles)
% hObject    handle to akting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
