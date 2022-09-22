close all;
%作為基準的手勢
base_x_u=load('Christy_X-up_01.Wfm.csv');
base_x_d=load('Christy_X-down_1.Wfm.csv');
base_x=load('Christy_X-updown_1.Wfm.csv');
base_y_1=load('Christy_y_1to2_01.Wfm.csv');
base_y_2=load('Christy_y_2to1_1.Wfm.csv');
base_y=load('Christy_yRL_1.Wfm.csv');
base_z_f=load('Christy_Z_f_1.Wfm.csv');
base_z_b=load('Christy_Z_b_1.Wfm.csv');
base_z=load('Christy_Z_fb_1.Wfm.csv');

%要測試的手勢
test_data=load('./test/Christy_X-up_20.Wfm.csv');
% test_data=load('Christy_Z_fb_1.Wfm.csv');

% DTWandSSIM=load('LHDTWandSSIM.csv');

all_base=[base_x_u,base_x_d,base_x,base_y_1,base_y_2,base_y,base_z_f,base_z_b,base_z];

data=[all_base,test_data];

[all_result]=gesture_process(data);