function [x]=DTMFTRA(Number)
    N = length(Number);
    freqtable = [697, 770, 852;  1477, 1209, 1336];
    Ts = 1/8192; 
    x =[]; 
    
    xtune= zeros(1,N*0.25/Ts);
    for i = 1:N
        t = (i-1)*0.25:Ts:(i-1)*0.25+0.25-Ts;
        digit = Number(i);
        if digit == 0
            row_freq = 941;
            col_freq = 1336;
        else    
            row_freq = freqtable(1, ceil(digit / 3));
            col_freq = freqtable(2, mod(digit,3)+1);
        end   
        xtune = cos(2*pi*row_freq*t) + cos(2*pi*col_freq*t);
%         x = [x,xtune,zeros(1,0.125*8192)];
        x = [x,xtune];
    end
    size (x)
end