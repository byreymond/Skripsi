function varargout = perancang1(varargin)
% PERANCANG1 MATLAB code for perancang1.fig
%      PERANCANG1, by itself, creates a new PERANCANG1 or raises the existing
%      singleton*.
%
%      H = PERANCANG1 returns the handle to a new PERANCANG1 or the handle to
%      the existing singleton*.
%
%      PERANCANG1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERANCANG1.M with the given input arguments.
%
%      PERANCANG1('Property','Value',...) creates a new PERANCANG1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before perancang1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to perancang1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help perancang1

% Last Modified by GUIDE v2.5 19-Oct-2016 11:34:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @perancang1_OpeningFcn, ...
                   'gui_OutputFcn',  @perancang1_OutputFcn, ...
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


% --- Executes just before perancang1 is made visible.
function perancang1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to perancang1 (see VARARGIN)

% Choose default command line output for perancang1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes perancang1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = perancang1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes8
axes (hObject);
imshow ('asset/admin.jpg');
