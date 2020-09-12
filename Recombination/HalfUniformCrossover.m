function [c1,c2] = HalfUniformCrossover(p1,p2)
%   This Function Performs Half-Uniform Crossover
%   It Takes Tow Parents (p1,p2) And Produces Two Children [c1,c2]
c1 = p1;
c2 = p2;
smlr=[];
for i = 1:numel(p1)
    if c1(i) ~= c2(i)
        smlr = [smlr, i];
    end
end
smlr = smlr(randperm(length(smlr)));
for j = 1:floor(numel(smlr)/2)
    [c1(smlr(j)), c2(smlr(j))] = deal(c2(smlr(j)), c1(smlr(j)));
end
