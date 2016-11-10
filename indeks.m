function varargout = indeks(varargin)
% INDEKS MATLAB code for indeks.fig
%      INDEKS, by itself, creates a new INDEKS or raises the existing
%      singleton*.
%
%      H = INDEKS returns the handle to a new INDEKS or the handle to
%      the existing singleton*.
%
%      INDEKS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDEKS.M with the given input arguments.
%
%      INDEKS('Property','Value',...) creates a new INDEKS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before indeks_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to indeks_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help indeks

% Last Modified by GUIDE v2.5 31-Oct-2016 18:03:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @indeks_OpeningFcn, ...
                   'gui_OutputFcn',  @indeks_OutputFcn, ...
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


% --- Executes just before indeks is made visible.
function indeks_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to indeks (see VARARGIN)

% Choose default command line output for indeks
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes indeks wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = indeks_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in klasifikasi.
function klasifikasi_Callback(hObject, eventdata, handles)
% hObject    handle to klasifikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(klasifikasi);
close(indeks);


% --- Executes on button press in perancang.
function perancang_Callback(hObject, eventdata, handles)
% hObject    handle to perancang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(perancang1);

% --- Executes on button press in X.
function X_Callback(hObject, eventdata, handles)
% hObject    handle to X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;



% --- Executes on button press in tentang.
function tentang_Callback(hObject, eventdata, handles)
% hObject    handle to tentang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

guidata(tentang1);


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes4
axes (hObject);
imshow ('asset/bgTA.jpg');
