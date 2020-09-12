function [c1,c2] = SinglePointCrossover(p1,p2)
%   This Function Performs Single Point Crossover
%   It Takes Tow Parents (p1,p2) And Produces Two Children [c1,c2]
r = randi(numel(p1));
% disp(r);
c1 = cat(2, p1(1: r), p2(r+1: end));
c2 = cat(2, p2(1: r), p1(r+1: end));
end