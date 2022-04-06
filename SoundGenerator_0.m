%% 生成单频f=450Hz的音频（正弦波），播放并保存声音文件。
% 用于带通滤波器测试。
Fs=44100;   % 采样频率
T=10;       % 音频时间长度
n=Fs*T;     % 计算音频采样点数
f=450;      % 音频单一频率
y=sin(2*pi*f*T*linspace(0,1,n+1));    % 生成音频曲线
% sound(y,Fs);
filename=strcat('SingleTone',num2str(f),'Hz.wav');
audiowrite(filename,y,Fs,'BitsPerSample',16,'Artist','XingyuShao');

%% 生成单频f=1000Hz的音频（正弦波），播放并保存声音文件。
% 用于带通滤波器测试。
Fs=44100;   % 采样频率
T=10;       % 音频时间长度
n=Fs*T;     % 计算音频采样点数
f=1000;      % 音频单一频率
y=sin(2*pi*f*T*linspace(0,1,n+1));    % 生成音频曲线
% sound(y,Fs);
filename=strcat('SingleTone',num2str(f),'Hz.wav');
audiowrite(filename,y,Fs,'BitsPerSample',16,'Artist','XingyuShao');


%% 生成双频音频，两个频率分量位于不同的信道，保存声音文件。
Fs=44100;   % 采样频率
T=10;       % 音频时间长度
n=Fs*T;     % 计算音频采样点数
f1=450;      % 音频第一个频率
f2=560;
y1=sin(2*pi*f1*T*linspace(0,1,n+1));    % 生成音频曲线
y2=sin(2*pi*f2*T*linspace(0,1,n+1));
y=(2*y1+y2)/3;
% sound(y,Fs);
filename=strcat('DoubleTone',num2str(f1),'+',num2str(f2),'Hz.wav');
audiowrite(filename,y,Fs,'BitsPerSample',16,'Artist','XingyuShao');
