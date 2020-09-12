function [c1] = FlatCrossover(p1,p2)
%   This Function Performs Flat Crossover
%   It Takes Tow Parents (p1,p2) And Produces One Child [c1]
for i = 1:numel(p1)
    c1(i) = p1(i) + (p2(i)-p1(i)).*rand();
end
end

