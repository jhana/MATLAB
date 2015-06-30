function v = valseq( a )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
for i=1:length(a)
    if isnumeric(a{i})
        v=a{i};
        return;
    end
end

