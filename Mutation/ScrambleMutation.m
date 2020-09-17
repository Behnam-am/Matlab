function [c1] = ScrambleMutation(p1)
%   This Function Performs Scramble Mutation
%   It Takes One Parent (p1) And Produces One Child [c1]
c1 = p1;
r = randperm(numel(p1), 2);
r = sort(r);
x = c1(r(1):r(2));
idx = randperm(length(x));
x = x(idx);
c1(r(1):r(2)) = x;
end
