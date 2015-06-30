function n = seqsolve ( a )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
l=length(a);
for i=1:(l-1)
    add(i)=a(i)+a(i+1);
    diff(i)=a(i+1)-a(i);
    mul(i)=a(i)*a(i+1);
end
if sum(diff)==(diff(1)*(l-1)) && sum(diff)==(diff(end)*(l-1))
   n=a(end)+diff(1);
   return;
end
end

