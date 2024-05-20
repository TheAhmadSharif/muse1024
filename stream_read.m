addpath('/home/ahmad/Apps/xdf-Matlab-master')

streams=load_xdf('/home/ahmad/Documents/CurrentStudy/sub-P001/ses-S001/eeg/25_April/02.xdf');


x = streams{1, 1}.info;
first_timestamp = str2num(x.first_timestamp);
last_timestamp = str2num(x.last_timestamp);
created_at = str2num(x.created_at);


 first = datetime(first_timestamp,'ConvertFrom','posixtime', 'Format', 'yyyy-MM-dd HH:mm:ss');
 last = datetime(last_timestamp,'ConvertFrom','posixtime', 'Format', 'yyyy-MM-dd HH:mm:ss');
 created = datetime(created_at,'ConvertFrom','posixtime', 'Format', 'yyyy-MM-dd HH:mm:ss');
 first
 last
 created


%%

temp_table = struct2table(x);
writetable(temp_table,'data.csv')



data = readtable('data.csv');
writetable(data, 'output.csv');

%%
ts = streams{1, 1}.time_series(4,:)
len_ = size(ts)
len_ = len_(2) -10

d = ts(len_:end)
size(ts)
plot(d)
%%
% Timestamps

t_stamp = streams{1, 1}.time_stamps
first = t_stamp(60)

first = datetime(first,'ConvertFrom','posixtime', 'Format', 'yyyy-MM-dd HH:mm:ss')
%%
addpath('/home/ahmad/Apps/xdf-Matlab-master')
addpath('/home/ahmad/Apps/eeglab2024.0')

streams=load_xdf('/home/ahmad/Documents/CurrentStudy/014.xdf');

str = streams{1, 1}
created_at = str2num(str.info.created_at)
created_at = datetime(created_at,'ConvertFrom','posixtime', 'Format', 'yyyy-MM-dd HH:mm:ss')
created_at
t_begin = str.segments.t_begin
t_begin = datetime(t_begin,'ConvertFrom','posixtime', 'Format', 'yyyy-MM-dd HH:mm:ss')
t_begin

t_end = str.segments.t_end
t_end = datetime(t_end,'ConvertFrom','posixtime', 'Format', 'yyyy-MM-dd HH:mm:ss')
t_end
ts = str.time_series(4,:);
% ts_plt = ts(1:10)
% plot(ts_plt)

eeglab






% –––––––––– 29 April 2024 –––––––––– %

x = streams{1, 2}.info;
first_timestamp = str2num(x.first_timestamp);
last_timestamp = str2num(x.last_timestamp);


 first = datetime(first_timestamp,'ConvertFrom','posixtime', 'Format', 'yyyy-MM-dd HH:mm:ss');
 last = datetime(last_timestamp,'ConvertFrom','posixtime', 'Format', 'yyyy-MM-dd HH:mm:ss');
 first
 last
% –––––––––––––––––––––––––––––––––––– %
 x = streams{1, 1}.info
 ts = streams{1, 1}.time_series
 plot(ts(1,:)) // By specifying ts(1, :), you are plotting all the columns of the first row of the time series data.
 plot(ts(end,:))

 plot(ts(4,:))

 size(X)
