clc
clear all
Fs = 8192;
record=audiorecorder(Fs,16,1);
disp('started')
recordblocking(record,12);
disp('ended');
x=transpose(getaudiodata(record));

audiowrite('test.wav',x,Fs);
