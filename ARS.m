function varargout = ARS(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ARS_OpeningFcn, ...
                   'gui_OutputFcn',  @ARS_OutputFcn, ...
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


function ARS_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);



% --- Outputs from this function are returned to the command line.
function varargout = ARS_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function qe_Callback(hObject, eventdata, handles)
qe = str2double(get(hObject,'String'));
setappdata(gcf, 'qe', qe);


function qe_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pe_Callback(hObject, eventdata, handles)

pe = str2double(get(hObject,'String'));
setappdata(gcf, 'pe', pe);


function pe_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pc_Callback(hObject, eventdata, handles)

pc = str2double(get(hObject,'String'));
setappdata(gcf, 'pc', pc);

function pc_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ta_Callback(hObject, eventdata, handles)

ta = str2double(get(hObject,'String'));
setappdata(gcf, 'ta', ta);

function ta_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pg1_Callback(hObject, eventdata, handles)

pg1 = str2double(get(hObject,'String'));
setappdata(gcf, 'pg1', pg1);

function pg1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function tg1_Callback(hObject, eventdata, handles)

tg1 = str2double(get(hObject,'String'));
setappdata(gcf, 'tg1', tg1);

function tg1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tg2_Callback(hObject, eventdata, handles)

tg2 = str2double(get(hObject,'String'));
setappdata(gcf, 'tg2', tg2);

function tg2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eta1_Callback(hObject, eventdata, handles)

eta1 = str2double(get(hObject,'String'));
setappdata(gcf, 'eta1', eta1);

function eta1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eta2_Callback(hObject, eventdata, handles)

eta2 = str2double(get(hObject,'String'));
setappdata(gcf, 'eta2', eta2);

function eta2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function COP_Callback(hObject, eventdata, handles)

function COP_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pushbutton1_Callback(hObject, eventdata, handles)

   in.qe = str2double(get(handles.qe,'String'));
   in.pe = str2double(get(handles.pe,'String'));
   in.pc = str2double(get(handles.pc,'String'));
   in.ta = str2double(get(handles.ta,'String'));
   in.pg1 = str2double(get(handles.pg1,'String'));
   in.tg1 = str2double(get(handles.tg1,'String'));
   in.tg2 = str2double(get(handles.tg2,'String'));
   in.eta1 = str2double(get(handles.eta1,'String'));
   in.eta2 = str2double(get(handles.eta2,'String'));
   

   out   = AR(in)         ;

   set(handles.COP    , 'String', num2str(out.COP    ) );
   save('stored_data.mat', 'in');

function Load_Callback(hObject, eventdata, handles)



function load_Callback(hObject, eventdata, handles)

load ARS_data;

setappdata(gcf, 'qe', in.qe );
setappdata(gcf, 'pe', in.pe );
setappdata(gcf, 'pc', in.pc );
setappdata(gcf, 'ta', in.ta );
setappdata(gcf, 'pg1', in.pg1 );
setappdata(gcf, 'tg1', in.tg1 );
setappdata(gcf, 'tg2', in.tg2 );
setappdata(gcf, 'eta1', in.eta1 );
setappdata(gcf, 'eta2', in.eta2 );

set(handles.qe , 'String', num2str(in.qe) );
set(handles.pe , 'String', num2str(in.pe) );
set(handles.pc , 'String', num2str(in.pc) );
set(handles.ta , 'String', num2str(in.ta) );
set(handles.pg1 , 'String', num2str(in.pg1) );
set(handles.tg1 , 'String', num2str(in.tg1) );
set(handles.tg2 , 'String', num2str(in.tg2) );
set(handles.eta1 , 'String', num2str(in.eta1) );
set(handles.eta2 , 'String', num2str(in.eta2) );






% function myname_Callback(hObject, eventdata, handles)
% 
% 
% function myname_CreateFcn(hObject, eventdata, handles)
% 
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% myname = (get(hObject,'String'));
% setappdata(gcf, 'myname', myname);





function axes1_CreateFcn(hObject, eventdata, handles)
%axes(handles.ax);
imshow('Capture.JPG');
