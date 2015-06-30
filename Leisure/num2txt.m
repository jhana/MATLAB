function C = num2txt( x, varargin )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
var=cell2mat(varargin);
narg = length(varargin);
if narg > 0 
    if narg >1
        disp('WARNING> Too many input arguments. Giving default conversion');
        sys='i';
    else if var=='A' || var=='a'
            sys='a';
        else if var=='i' || var=='I'
                sys='i';
            else disp('WARNING> Incorrect input for number system. Giving default conversion');
                 sys='i';
            end
        end
    end           
else sys='i';
end

C= num2txt_(x,sys);
C=strtrim(C);
end

