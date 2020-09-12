function [c1,c2] = SuffleCrossover(p1,p2)
%   This Function Performs Suffle Crossover
%   It Takes Tow Parents (p1,p2) And Produces Two Children [c1,c2]
p1 = p1(randperm(length(p1)));
p2 = p2(randperm(length(p2)));
r = randi(numel(p1));
c1 = cat(2, p1(1: r), p2(r+1: end));
c2 = cat(2, p2(1: r), p1(r+1: end));
end

