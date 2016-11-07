function varargout = Model(varargin)
% MODEL MATLAB code for Model.fig
%      MODEL, by itself, creates a new MODEL or raises the existing
%      singleton*.
%
%      H = MODEL returns the handle to a new MODEL or the handle to
%      the existing singleton*.
%
%      MODEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODEL.M with the given input arguments.
%
%      MODEL('Property','Value',...) creates a new MODEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Model_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Model_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Model

% Last Modified by GUIDE v2.5 07-Nov-2016 12:37:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Model_OpeningFcn, ...
                   'gui_OutputFcn',  @Model_OutputFcn, ...
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


% --- Executes just before Model is made visible.
function Model_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Model (see VARARGIN)

% Choose default command line output for Model
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Model wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Model_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Leak_Callback(hObject, eventdata, handles)
% hObject    handle to Leak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Leak as text
%        str2double(get(hObject,'String')) returns contents of Leak as a double


% --- Executes during object creation, after setting all properties.
function Leak_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Leak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RAccess_Callback(hObject, eventdata, handles)
% hObject    handle to RAccess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RAccess as text
%        str2double(get(hObject,'String')) returns contents of RAccess as a double


% --- Executes during object creation, after setting all properties.
function RAccess_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RAccess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function CellCap_Callback(hObject, eventdata, handles)
% hObject    handle to CellCap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CellCap as text
%        str2double(get(hObject,'String')) returns contents of CellCap as a double


% --- Executes during object creation, after setting all properties.
function CellCap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CellCap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function kh_Callback(hObject, eventdata, handles)
% hObject    handle to kh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kh as text
%        str2double(get(hObject,'String')) returns contents of kh as a double


% --- Executes during object creation, after setting all properties.
function kh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MaxCurrent_Callback(hObject, eventdata, handles)
% hObject    handle to MaxCurrent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MaxCurrent as text
%        str2double(get(hObject,'String')) returns contents of MaxCurrent as a double

% --- Executes during object creation, after setting all properties.
function MaxCurrent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MaxCurrent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function V2h_Callback(hObject, eventdata, handles)
% hObject    handle to V2h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V2h as text
%        str2double(get(hObject,'String')) returns contents of V2h as a double

% --- Executes during object creation, after setting all properties.
function V2h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V2h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Tail_Callback(hObject, eventdata, handles)
% hObject    handle to Tail (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tail as text
%        str2double(get(hObject,'String')) returns contents of Tail as a double

% --- Executes during object creation, after setting all properties.
function Tail_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tail (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Transient_Callback(hObject, eventdata, handles)
% hObject    handle to Transient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Transient as text
%        str2double(get(hObject,'String')) returns contents of Transient as a double

% --- Executes during object creation, after setting all properties.
function Transient_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Transient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Leak = str2num(get(handles.Leak,'String'));
R_Access = str2num(get(handles.RAccess,'String'));
CellCap = str2num(get(handles.CellCap,'String'));
K_Hinf = str2num(get(handles.kh,'String'));
MaxCurrent = str2num(get(handles.MaxCurrent,'String'));
V_Hinf = str2num(get(handles.V2h,'String'));

Decay = get(handles.listbox1,'Value');
if(Decay==1);
    Tail = 0;
elseif(Decay==2);
    Tail = 1;
end

ACurrent = get(handles.listbox2,'Value');
if(ACurrent==1);
    Transient = 0;
elseif(ACurrent==2);
    Transient = 1;
end

path(path,'C:\IsletCellType_GitHub\Matlab_Functions');

[Probability_abd,CellTypeNumber] = IsletCellType(R_Access,Leak,MaxCurrent,V_Hinf,Transient,Tail,CellCap,K_Hinf);

Prob_A = num2str(Probability_abd(1));
Prob_B = num2str(Probability_abd(2));
Prob_D = num2str(Probability_abd(3));

set(handles.probalpha,'String',Prob_A);
set(handles.probbeta,'String',Prob_B);
set(handles.probdelta,'String',Prob_D);

guidata(hObject,handles); %Updates GUI display

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

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

% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2

% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function InputData_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Message1='Go on then!';

set(handles.InputData,'String',Message1);
guidata(hObject,handles); %Updates GUI display

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Help
