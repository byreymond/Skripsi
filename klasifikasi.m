function varargout = klasifikasi(varargin)
% KLASIFIKASI MATLAB code for klasifikasi.fig
%      KLASIFIKASI, by itself, creates a new KLASIFIKASI or raises the existing
%      singleton*.
%
%      H = KLASIFIKASI returns the handle to a new KLASIFIKASI or the handle to
%      the existing singleton*.
%
%      KLASIFIKASI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KLASIFIKASI.M with the given input arguments.
%
%      KLASIFIKASI('Property','Value',...) creates a new KLASIFIKASI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before klasifikasi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to klasifikasi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help klasifikasi

% Last Modified by GUIDE v2.5 06-Nov-2016 23:07:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @klasifikasi_OpeningFcn, ...
                   'gui_OutputFcn',  @klasifikasi_OutputFcn, ...
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


% --- Executes just before klasifikasi is made visible.
function klasifikasi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to klasifikasi (see VARARGIN)

% Choose default command line output for klasifikasi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes klasifikasi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = klasifikasi_OutputFcn(hObject, eventdata, handles) 
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
global I
global gambar
global fGambar
[nama_file1, nama_path1]=uigetfile ( ...
    {'*.jpg','File JPEG(*.jpg)';...
    '*.bmp','File BMP(*.bmp)';...
    '*.png','File PNG(*.png)';...
    '*.*','Semua file(*.*)'},...
    'Buka File Citra Asli');
if ~isequal(nama_file1, 0)
    gambar=fullfile(nama_file1);
    fGambar=imread(nama_file1);
    I=imread(fullfile(nama_path1,nama_file1));
    axes(handles.axes1);
    imshow(I);
    %set(handles.nama,'String',gambar);
else
    return;
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% function [data nilai]=datates31(filename)
%filename='natori1.jpg';
%im=imread(filename);
% im=rgb2hsv(im);
% im=double(rgb2ycbcr(im));

filename='2012c.png';
im=imread(filename);
im2=imread('2000.png');
%im2=double(rgb2ycbcr(im2));
% im=rgb2hsv(im);
%im=double(rgb2ycbcr(im));
data=[];
nilai=[];



%-------------------------------------------------
for y=129:192,
    for x=99:183,
        data=[data;im2(y,x,1) im2(y,x,2) im2(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end

for y=378:394,
    for x=490:509,
        data=[data;im2(y,x,1) im2(y,x,2) im2(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end

for y=337:361,
    for x=570:584,
        data=[data;im2(y,x,1) im2(y,x,2) im2(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end 

for y=337:361,
    for x=254:305,
        data=[data;im2(y,x,1) im2(y,x,2) im2(y,x,3)];
        nilai=[nilai;0 1 0 0];
    end
end 

% lahan hijau
% (139,24),(207,89)
for y=24:89,
    for x=139:24,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end
%(497,321),(553,393)
for y=321:393,
    for x=497:553,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end
% (420,138),(512,218)
for y=138:218,
    for x=420:512,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end

%(115,324),(151,365)
for y=324:365,
    for x=115:151,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end

%pemukiman
%(232,339),(309,400)
for y=339:400,
    for x=232:309,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 1 0 0];
    end
end

%perairan
%(121,297),(121,307)
for y=297:307,
    for x=121:121,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 0 1 0];
    end
end
%(131,304),(131,313)
for y=304:313,
    for x=131:131,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 0 1 0];
    end
end
%(183,311),(195,311)
for y=311:311,
    for x=183:195,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 0 1 0];
    end
end
%(284,328),(297,329)
for y=328:329,
    for x=284:297,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 0 1 0];
    end
end
%(275,303),(276,311)
for y=303:311,
    for x=375:276,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 0 1 0];
    end
end
%(327,303),(329,317)
for y=303:317,
    for x=327:329,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 0 1 0];
    end
end
%(345,298),(354,302)
for y=298:302,
    for x=345:354,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 0 1 0];
    end
end
%(385,286),(408,288)
for y=286:288,
    for x=385:408,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 0 1 0];
    end
end

    for y=260:262,
        for x=532:540,
            data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
            nilai=[nilai;0 0 1 0];
        end
    end

    for y=249:256,
        for x=546:548,
            data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
            nilai=[nilai;0 0 1 0];
        end
    end
 
for i=0:10,
    for y=250:256,
        for x=547:548,
            data=[data;im2(y,x,1) im2(y,x,2) im2(y,x,3)];
            nilai=[nilai;0 0 1 0];
        end
    end
    
      for y=261:262,
        for x=529:540,
            data=[data;im2(y,x,1) im2(y,x,2) im2(y,x,3)];
            nilai=[nilai;0 0 1 0];
        end
    end
end
%background
%(442,10),(573,57)
for y=10:57,
    for x=442:573,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;0 0 0 1];
    end
end
% figure,imshow(im);
% 
% % im2=rgb2hsv(im);
% % im3=hsv2rgb(im2);
% % imshow(im3);
% return;
% function [net Output]=NNtes3()
global gambar
pgambar=gambar;
% filename='natori1.jpg';
%[input target]=datates31(pgambar);
%[input target]=datates22(filename);
data=double(data);
P=data';
size(P)
T=nilai';

net=newff(P,T,[10],{'logsig' 'purelin'});
net.trainParam.goal = 0.001;
%net.trainParam.goal = 0.02;
net.trainParam.epochs = 1000;
net.trainParam.lr = 0.1;
net.plotFcns = {'plotconfusion'};
net=train(net,P,T);
save ('training.mat','net');
% %initial weigth
%  net.IW{1,1} % weight(w) matrix for connections Input(i) and Hidden(h) layer
%  net.b{1,1} % weight(w) bias matrix for connections Input(i) and Hidden(h) layer
%  net.LW{2,1} % weight(w) matrix for connections btwn Hidden(h) and Output(o) layer
%  net.b{2,1} % weight(w) bias matrix for connections btwn Hidden(h) and Output(o) layer


citra_resized = 300;
img=imread(pgambar);

img = imresize(img, [NaN citra_resized]);

%img=double(rgb2ycbcr(img));

dataInput=[];
[m n o]=size(img);
data = [];
for y=1:m,
    for x=1:n,
        dataInput=[dataInput;img(y,x,1) img(y,x,2) img(y,x,3)];        
        data = [data;y,x];
    end
end
Ps=transpose(dataInput);
Ys=sim(net,Ps);
Output=[];
[k l]=size(Ys);

lahanhijau=zeros(m,n);
pemukiman=zeros(m,n);
perairan=zeros(m,n);
background=zeros(m,n);
mm=1;
nn=1;

for y=1:l;
   
    idx_max = 0;
    nilai_max = 0;
    for x=1:k,
        if nilai_max<Ys(x,y),
            nilai_max=Ys(x,y);
            idx_max=x;
        end
    end
    if idx_max==1,
        lahanhijau(data(y,1),data(y,2))=1;
    elseif idx_max==2,
        pemukiman(data(y,1),data(y,2))=1;
    elseif idx_max==3,
        perairan(data(y,1),data(y,2))=1;
    else
        background(data(y,1),data(y,2))=1;
    end
    mm=mm+1;
    if mm>m,
        mm=1;
        nn=nn+1;
    end

end

% figure,imshow(lahanhijau);
% MENAMPILKAN CITRA positif
axes(handles.axes2);
imshow(lahanhijau),title('Daerah Bervegetasi',...
    'FontName','Maiandra GD','FontSize',14,'FontWeight','bold');
hold on

blackcount = sum(sum(lahanhijau == 0));
whitecount = sum(sum(lahanhijau));

totalNumberOfPixels = blackcount + whitecount;
 percentBlackPixels = 100.0 * blackcount / totalNumberOfPixels;
 percentWhitePixels = 100.0 * whitecount / totalNumberOfPixels;

info1 = sprintf('Pixel hitam = %d\nLuas Backgound = %.3f%%\nPixel putih = %d\nPersentase Luas Area= %.3f%%', ... 
   blackcount, percentBlackPixels, ... 
   whitecount, percentWhitePixels);
set(handles.output1,'string',info1);

% figure,imshow(pemukiman);
% MENAMPILKAN CITRA PEMUKIMAN
axes(handles.axes3);
imshow(pemukiman),title('Pemukiman',...
    'FontName','Maiandra GD','FontSize',14,'FontWeight','bold');
hold on

blackcount = sum(sum(pemukiman == 0));
whitecount = sum(sum(pemukiman));

totalNumberOfPixels = blackcount + whitecount;
 percentBlackPixels = 100.0 * blackcount / totalNumberOfPixels;
 percentWhitePixels = 100.0 * whitecount / totalNumberOfPixels;

info2 = sprintf('Pixel hitam = %d\nLuas Background = %.3f%%\nPixel putih = %d\nPersentase Luas Area = %.3f%%', ... 
   blackcount, percentBlackPixels, ... 
   whitecount, percentWhitePixels);

set(handles.output2,'string',info2);


% figure,imshow(perairan);
% MENAMPILKAN CITRA perairan
axes(handles.axes4);
imshow(perairan),title('Perairan',...
    'FontName','Maiandra GD','FontSize',14,'FontWeight','bold');
hold on

blackcount = sum(sum(perairan == 0));
whitecount = sum(sum(perairan));

totalNumberOfPixels = blackcount + whitecount;
 percentBlackPixels = 100.0 * blackcount / totalNumberOfPixels;
 percentWhitePixels = 100.0 * whitecount / totalNumberOfPixels;

info3 = sprintf('Pixel hitam = %d\nLuas Background = %.3f%%\nPixel Putih = %d\nPersentase Luas Area = %.3f%%', ... 
   blackcount, percentBlackPixels, ... 
   whitecount, percentWhitePixels);

set(handles.output3,'string',info3);

% figure,imshow(background);
% MENAMPILKAN CITRA background
axes(handles.axes9);
imshow(background),title('Background',...
    'FontName','Maiandra GD','FontSize',14,'FontWeight','bold');
hold on

blackcount = sum(sum(background == 0));
whitecount = sum(sum(background));

totalNumberOfPixels = blackcount + whitecount;
 percentBlackPixels = 100.0 * blackcount / totalNumberOfPixels;
 percentWhitePixels = 100.0 * whitecount / totalNumberOfPixels;

info12 = sprintf('Pixel hitam = %d\nLuas Background = %.3f%%\nPixel Putih = %d\nPersentase Luas Area = %.3f%%', ... 
   blackcount, percentBlackPixels, ... 
   whitecount, percentWhitePixels);

set(handles.output4,'string',info12);
return;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I
global gambar
global fGambar
[nama_file1, nama_path1]=uigetfile ( ...
    {'*.jpg','File JPEG(*.jpg)';...
    '*.bmp','File BMP(*.bmp)';...
    '*.png','File PNG(*.png)';...
    '*.*','Semua file(*.*)'},...
    'Buka File Citra Asli');
if ~isequal(nama_file1, 0)
    gambar=fullfile(nama_file1);
    fGambar=imread(nama_file1);
    I=imread(fullfile(nama_path1,nama_file1));
    axes(handles.axes5);
    imshow(I);
    %set(handles.nama,'String',gambar);
else
    return;
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global gambar
pgambar=gambar;

load training.mat;

citra_resized = 300;
img=imread(pgambar);

%img = imresize(img, [NaN citra_resized]);

%img=double(rgb2ycbcr(img));

dataInput=[];
[m n o]=size(img);
data = [];
for y=1:m,
    for x=1:n,
        dataInput=[dataInput;img(y,x,1) img(y,x,2) img(y,x,3)];        
        data = [data;y,x];
    end
end
Ps=transpose(dataInput);
Ys=sim(net,Ps);

Output=[];
[k l]=size(Ys);

lahanhijau=zeros(m,n);
pemukiman=zeros(m,n);
perairan=zeros(m,n);
background=zeros(m,n);
mm=1;
nn=1;
for y=1:l;
   
    idx_max = 0;
    nilai_max = 0;
    for x=1:k,
        if nilai_max<Ys(x,y),
            nilai_max=Ys(x,y);
            idx_max=x;
        end
    end
    if idx_max==1,
        lahanhijau(data(y,1),data(y,2))=1;
    elseif idx_max==2,
        pemukiman(data(y,1),data(y,2))=1;
    elseif idx_max==3,
        perairan(data(y,1),data(y,2))=1;
    else
        background(data(y,1),data(y,2))=1;
    end
    mm=mm+1;
    if mm>m,
        mm=1;
        nn=nn+1;
    end

end

% figure,imshow(lahanhijau);
% MENAMPILKAN CITRA positif
axes(handles.axes6);
imshow(lahanhijau),title('Daerah Bervegetasi',...
    'FontName','Maiandra GD','FontSize',14,'FontWeight','bold');
hold on

blackcount = sum(sum(lahanhijau == 0));
whitecount = sum(sum(lahanhijau));

totalNumberOfPixels = blackcount + whitecount;
 percentBlackPixels = 100.0 * blackcount / totalNumberOfPixels;
 percentWhitePixels = 100.0 * whitecount / totalNumberOfPixels;

info6 = sprintf('Pixel hitam = %d             Luas Background = %.3f%%\nPixel putih = %d\nPersentase Luas Area Lahan Hijau= %.3f%%', ... 
   blackcount,percentBlackPixels, ... 
   whitecount,percentWhitePixels);
set(handles.output6,'string',info6);

% figure,imshow(pemukiman);
% MENAMPILKAN CITRA PEMUKIMAN
axes(handles.axes7);
imshow(pemukiman),title('Pemukiman',...
    'FontName','Maiandra GD','FontSize',14,'FontWeight','bold');
hold on

blackcount = sum(sum(pemukiman == 0))
whitecount = sum(sum(pemukiman))

totalNumberOfPixels = blackcount + whitecount;
 percentBlackPixels = 100.0 * blackcount / totalNumberOfPixels;
 percentWhitePixels = 100.0 * whitecount / totalNumberOfPixels;

info7 = sprintf('Pixel hitam = %d               Luas Background = %.3f%% Pixel putih = %d\nPersentase Luas Area Pemukiman = %.3f%%', ... 
   blackcount, percentBlackPixels, ... 
   whitecount, percentWhitePixels);
set(handles.output7,'string',info7);

% figure,imshow(perairan);
% MENAMPILKAN CITRA perairan
axes(handles.axes8);
imshow(perairan),title('perairan',...
    'FontName','Maiandra GD','FontSize',14,'FontWeight','bold');
hold on

blackcount = sum(sum(perairan == 0))
whitecount = sum(sum(perairan))

totalNumberOfPixels = blackcount + whitecount;
 percentBlackPixels = 100.0 * blackcount / totalNumberOfPixels;
 percentWhitePixels = 100.0 * whitecount / totalNumberOfPixels;

info8= sprintf('Pixel hitam = %d                   Luas Background = %.3f%% Pixel Putih = %d\nPersentase Luas Area Perairan= %.3f%%', ... 
   blackcount, percentBlackPixels, ... 
   whitecount, percentWhitePixels);
set(handles.output8,'string',info8);

% figure,imshow(background);
% MENAMPILKAN CITRA background
axes(handles.axes10);
imshow(background),title('Background',...
    'FontName','Maiandra GD','FontSize',14,'FontWeight','bold');
hold on

blackcount = sum(sum(background == 0))
whitecount = sum(sum(background))

totalNumberOfPixels = blackcount + whitecount;
 percentBlackPixels = 100.0 * blackcount / totalNumberOfPixels;
 percentWhitePixels = 100.0 * whitecount / totalNumberOfPixels;

info11 = sprintf('Pixel hitam = %d                 Luas Background = %.3f%%\nPixel Putih = %d\nPersentase Luas Area background= %.3f%%', ... 
   blackcount, percentBlackPixels, ... 
   whitecount, percentWhitePixels);

set(handles.output11,'string',info11);

return;


% --- Executes on button press in kembali.
function kembali_Callback(hObject, eventdata, handles)
% hObject    handle to kembali (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(indeks);
close(klasifikasi);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(klasifikasi);
guidata(klasifikasi);
