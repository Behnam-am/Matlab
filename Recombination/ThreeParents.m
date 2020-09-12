function [c1] = ThreeParents(p1,p2,p3)
%   This Function Performs Three Parents Crossover
%   It Takes Three Parents (p1,p2,p3) And Produces One Child [c1]
for i = 1:numel(p1)
    if p1(i) == p2(i)
        c1(i) = p1(i);
    else
        c1(i) = p3(i);
    end
end

