function [c1,c2] = ReducedSurrogate(p1,p2)
%   This Function Performs Reduced Surrogate Crossover
%   It Takes Tow Parents (p1,p2) And Produces Two Children [c1,c2]
smlr=[];
for i = 1:numel(p1)
    if p1(i) ~= p2(i)
        smlr = [smlr, i];
    end
end
r = smlr(randi(numel(smlr)));
c1 = cat(2, p1(1: r), p2(r+1: end));
c2 = cat(2, p2(1: r), p1(r+1: end));
end

