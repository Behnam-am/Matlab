function [c1] = InsertMutation(p1)
%   This Function Performs Insert Mutation
%   It Takes One Parent (p1) And Produces One Child [c1]
c1 = p1;
r = randperm(numel(p1), 2);
r = sort(r);
for i = r(2):-1:r(1)+2
    [c1(i), c1(i-1)] = swap(c1(i), c1(i-1));
end
end

function [b, a] = swap(a, b)
end