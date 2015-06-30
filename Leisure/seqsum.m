function [ s ] = seqsum( a )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
s=0;
for i=1:length(a)
    if a{i}=='*' || a{i}=='~'
        continue;
    else s=s+a{i};
end

