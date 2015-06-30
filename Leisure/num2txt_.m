function c = num2txt_( x , sys )
%UNTITLED2 Summary of this function goes here
c='Undefined';
if sys=='a'
    if x>=1000000000000000
        disp('ERROR> Number impractically large');
        return;
    end
    if x>=20
        if x>=100
            if x>=1000
                if x>=1000000
                    if x>=1000000000
                        if x>=1000000000000
                            c=strcat(num2txt_(idivide(int64(x),int64(1000000000000)),'a'),' Trillion',num2txt_(mod(x,1000000000000),'a'));
                        else c=strcat(num2txt_(idivide(int64(x),int64(1000000000)),'a'),' Billion',num2txt_(mod(x,1000000000),'a'));
                        end
                    else c=strcat(num2txt_(idivide(int64(x),int64(1000000)),'a'),' Million',num2txt_(mod(x,1000000),'a'));
                    end
                else c=strcat(num2txt_(idivide(int32(x),1000),'a'),' Thousand',num2txt_(mod(x,1000),'a'));
                end
            else c=strcat(num2txt_(idivide(int32(x),100),'a'),' Hundred',num2txt_(mod(x,100),'a'));
            end
        else
            switch(idivide(int32(x),10))
                case 2
                    c=' Twenty';
                case 3
                    c=' Thirty';
                case 4
                    c=' Forty';
                case 5
                    c=' Fifty';
                case 6
                    c=' Sixty';
                case 7
                    c=' Seventy';
                case 8
                    c=' Eighty';
                case 9
                    c=' Ninety';
            end
            c=strcat(c,num2txt_(mod(x,10),'a'));
        end
    else 
        switch(x)
                case 0
                    c='';
                case 1
                    c=' One';
                case 2
                    c=' Two';                
                case 3
                    c=' Three';                
                case 4
                    c=' Four';
                case 5
                    c=' Five';
                case 6
                    c=' Six';
                case 7
                    c=' Seven';
                case 8
                    c=' Eight';                
                case 9
                    c=' Nine';
                case 10
                    c=' Ten';
                case 11
                    c=' Eleven';                
                case 12
                    c=' Twelve';
                case 13
                    c=' Thirteen';
                case 14
                    c=' Fourteen';
                case 15
                    c=' Fifteen';
                case 16
                    c=' Sixteen';
                case 17
                    c=' Seventeen';
                case 18
                    c=' Eighteen';                
                case 19
                    c=' Nineteen';                
        end    
    end
else
    if x>=100000000000000
        disp('ERROR> Number impractically large');
        return;
    end
    if x>=20
        if x>=100
            if x>=1000
                if x>=100000
                    if x>=10000000
                        c=strcat(num2txt_(idivide(int64(x),int64(10000000)),'i'),' Crore',num2txt_(mod(x,10000000),'i'));
                    else c=strcat(num2txt_(idivide(int32(x),100000),'i'),' Lakh',num2txt_(mod(x,100000),'a'));
                    end
                else c=strcat(num2txt_(idivide(int32(x),1000),'i'),' Thousand',num2txt_(mod(x,1000),'a'));
                end
            else c=strcat(num2txt_(idivide(int32(x),100),'i'),' Hundred',num2txt_(mod(x,100),'a'));
            end
        else
            switch(idivide(int32(x),10))
                case 2
                    c=' Twenty';
                case 3
                    c=' Thirty';
                case 4
                    c=' Forty';
                case 5
                    c=' Fifty';
                case 6
                    c=' Sixty';
                case 7
                    c=' Seventy';
                case 8
                    c=' Eighty';
                case 9
                    c=' Ninety';
            end
            c=strcat(c,num2txt_(mod(x,10),'a'));
        end
    else 
        switch(x)
                case 0
                    c='';
                case 1
                    c=' One';
                case 2
                    c=' Two';                
                case 3
                    c=' Three';                
                case 4
                    c=' Four';
                case 5
                    c=' Five';
                case 6
                    c=' Six';
                case 7
                    c=' Seven';
                case 8
                    c=' Eight';                
                case 9
                    c=' Nine';
                case 10
                    c=' Ten';
                case 11
                    c=' Eleven';                
                case 12
                    c=' Twelve';
                case 13
                    c=' Thirteen';
                case 14
                    c=' Fourteen';
                case 15
                    c=' Fifteen';
                case 16
                    c=' Sixteen';
                case 17
                    c=' Seventeen';
                case 18
                    c=' Eighteen';                
                case 19
                    c=' Nineteen';                
        end    
    end
end
end    


