function n = txt2num( t )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
t=lower(t);
n=0;
t=strtrim(t);
allS=strfind(t,' ');
l=length(allS)+1;
allS=[0 allS length(t)+1];
n1=0;
for i=1:l
    k=t(int32(allS(i)+1):int32(allS(i+1)-1));
    switch(k)
        case 'one'
            n1=n1+1;
        case 'two'
            n1=n1+2;            
        case 'three'
            n1=n1+3;
        case 'four'
            n1=n1+4;
        case 'five'
            n1=n1+5;
        case 'six'
            n1=n1+6;
        case 'seven'
            n1=n1+7;
        case 'eight'
            n1=n1+8;
        case 'nine'
            n1=n1+9;
        case 'ten'
            n1=n1+10;
        case 'eleven'
            n1=n1+11;
        case 'twelve'
            n1=n1+12;
        case 'thirteen'
            n1=n1+13;
        case 'fourteen'
            n1=n1+14;
        case 'fifteen'
            n1=n1+15;
        case 'sixteen'
            n1=n1+16;
        case 'seventeen'
            n1=n1+17;
        case 'eighteen'
            n1=n1+18;
        case 'nineteen'
            n1=n1+19;
        case 'twenty'
            n1=n1+20;
        case 'thirty'
            n1=n1+30;
        case 'forty'
            n1=n1+40;
        case 'fifty'
            n1=n1+50;
        case 'sixty'
            n1=n1+60;
        case 'seventy'
            n1=n1+70;
        case 'eighty'
            n1=n1+80;
        case 'ninety'
            n1=n1+90;
        case 'hundred'
            n=n+n1*100;
            n1=0;
        case 'thousand'
            n=n+n1*1000;
            n1=0;
        case 'lakh'
            n=n+n1*100000;
            n1=0;
        case 'crore'
            n=n+n1*10000000;
            n1=0;        
    end
end    
if n1~=0
    n=n+n1;
end
end

