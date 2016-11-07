function varargout = Help(varargin)
% HELP MATLAB code for Help.fig
%      HELP, by itself, creates a new HELP or raises the existing
%      singleton*.
%
%      H = HELP returns the handle to a new HELP or the handle to
%      the existing singleton*.
%
%      HELP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELP.M with the given input arguments.
%
%      HELP('Property','Value',...) creates a new HELP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Help_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Help_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Help

% Last Modified by GUIDE v2.5 01-Sep-2016 09:59:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Help_OpeningFcn, ...
                   'gui_OutputFcn',  @Help_OutputFcn, ...
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


% --- Executes just before Help is made visible.
function Help_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Help (see VARARGIN)

% Choose default command line output for Help
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Help wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Help_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in help1.
function help1_Callback(hObject, eventdata, handles)
% hObject    handle to help1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Message1='Leak current of the recording in pA';

set(handles.text16,'String',Message1);
guidata(hObject,handles); %Updates GUI display

% --- Executes on button press in help2.
function help2_Callback(hObject, eventdata, handles)
% hObject    handle to help2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Message2='Access (series) resistance of the recording in Mega Ohms';

set(handles.text16,'String',Message2);
guidata(hObject,handles); %Updates GUI display

% --- Executes on button press in help3.
function help3_Callback(hObject, eventdata, handles)
% hObject    handle to help3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Message3='The capacitance of the cell in pF. This is the "C-slow" parameter after compensation for slow capacitive transients.';

set(handles.text16,'String',Message3);
guidata(hObject,handles); %Updates GUI display

% --- Executes on button press in help5.
function help5_Callback(hObject, eventdata, handles)
% hObject    handle to help5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Message5='Maximum Na+ current evoked, in pA.';

set(handles.text16,'String',Message5);
guidata(hObject,handles); %Updates GUI display

% --- Executes on button press in help6.
function help6_Callback(hObject, eventdata, handles)
% hObject    handle to help6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


Message6='The half-inactivation V2h (in mV) of the sodium current. This is taken from fitting a Boltzmann function to the steady-state data of the sodium current. If you are not sure how to calculate these, click on "Inactivation parameters".';

set(handles.text16,'String',Message6);
guidata(hObject,handles); %Updates GUI display

% --- Executes on button press in help7.
function help7_Callback(hObject, eventdata, handles)
% hObject    handle to help7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Message7='Do the IV data exhibit a tail current? If you are not sure, choose "Not sure". In this instance, clicking on "Calculate probabilities" will run a seperate multinomial logistic regression model that does not include this variable as a predictor.';

set(handles.text16,'String',Message7);
guidata(hObject,handles); %Updates GUI display

% --- Executes on button press in help8.
function help8_Callback(hObject, eventdata, handles)
% hObject    handle to help8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Message8='Do the IV data exhibit a transient outward current? If you are not sure, choose "Not sure". In this instance, clicking on "Calculate probabilities" will run a seperate multinomial logistic regression model that does not include this variable as a predictor.';

set(handles.text16,'String',Message8);
guidata(hObject,handles); %Updates GUI display

% --- Executes on button press in help4.
function help4_Callback(hObject, eventdata, handles)
% hObject    handle to help4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Message4='The slope factor (mV) of inactivation of the sodium current. This is taken from fitting a Boltzmann function to the steady-state data of the sodium current. If you are not sure how to calculate these, click on "Inactivation parameters".';

set(handles.text16,'String',Message4);
guidata(hObject,handles); %Updates GUI display


% --- Executes on button press in help9.
function help9_Callback(hObject, eventdata, handles)
% hObject    handle to help9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Message9='Once the data has been inputted, click on "Calculate Probabilities". This will run a model that will output three probabilities; Prob(Alpha), Prob(Beta) and Prob(Delta). These are the probabilities that this cell recording is an alpha, beta or delta-cell (respectively), according to the underlying model.';

set(handles.text16,'String',Message9);
guidata(hObject,handles); %Updates GUI display
