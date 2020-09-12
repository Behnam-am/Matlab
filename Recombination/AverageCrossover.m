function [c1] = AverageCrossover(p1,p2)
%   This Function Performs Average Crossover
%   It Takes Tow Parents (p1,p2) And Produces One Child [c1]
for i = 1:numel(p1)
    c1(i) = floor((p1(i) + p2(i)) / 2);
end
end

