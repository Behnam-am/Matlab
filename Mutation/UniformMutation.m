function [c1] = UniformMutation(p1,mn,mx,vr,n)
%   This Function Performs Uniform Mutation
%   It Takes One Parent (p1), Minimum Available value (mn), Maximum
%   Available value (mx), variation range (vr), Number Of Mutant Genes
%   And Produces One Child [c1]
c1 = p1;
r = randperm(numel(p1),n);
r = sort(r);
for i = 1:n
    minimum = max([mn,c1(r(i))-vr*c1(r(i))]);
    maximum = min([mx,c1(r(i))+vr*c1(r(i))]);
    c1(r(i)) = minimum + rand()*(maximum-minimum);
end
end

