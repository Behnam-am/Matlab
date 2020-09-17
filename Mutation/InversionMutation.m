function [c1] = InversionMutation(p1)
%   This Function Performs Inversion Mutation
%   It Takes One Parent (p1) And Produces One Child [c1]
c1 = p1;
r = randperm(numel(p1), 2);
r = sort(r);
x = c1(r(1):r(2));
for i = 1:length(x)/2
    [x(i), x(length(x)-i+1)] = swap(x(i), x(length(x)-i+1));
end
c1(r(1):r(2)) = x;
end

function [b, a] = swap(a, b)
end