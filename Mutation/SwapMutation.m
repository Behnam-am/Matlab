function [c1] = SwapMutation(p1)
%   This Function Performs Swap Mutation
%   It Takes One Parent (p1) And Produces One Child [c1]
c1 = p1;
r = randperm(numel(p1), 2);
[c1(r(1)), c1(r(2))] = swap(c1(r(1)), c1(r(2)));
end

function [b, a] = swap(a, b)
end