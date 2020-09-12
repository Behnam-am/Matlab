function [c1] = DiscreteCrossover(p1,p2)
%   This Function Performs Discrete Crossover
%   It Takes Tow Parents (p1,p2) And Produces One Child [c1]
for i = 1:numel(p1)
    r = rand();
    if r <= 0.5
        c1(i) = p1(i);
    else
        c1(i) = p2(i);
    end
end
end

