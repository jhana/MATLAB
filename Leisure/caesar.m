function [] = caesar( f )
%UNTITLED2 Caesar Code generator
%   with the key number
n=length(f);
F=f;
for i=0:25
    fprintf('%d >> %s\n',i,F);
    for j=1:n    
        if F(j)=='Z'
            F(j)='A';
        else if F(j)=='z'
            F(j)='a';
        else if F(j)==' ' continue;
        else F(j)=F(j)+1;
            end
          end
        end
    end
           
end

