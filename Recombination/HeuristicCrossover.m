function [c1] = HeuristicCrossover(p1,p2)
%   This Function Performs Heuristic Crossover
%   It Takes Tow Parents (p1,p2) And Produces One Child [c1]
for i = 1:numel(p1)
    r = (rand()-eps/2)/(1-eps);
    c1(i) = min(p1(i), p2(i)) + r*abs(p1(i)-p2(i));
end
end

