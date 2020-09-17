function [c1] = CompleteMutation(p1,nBit,mx)
%   This Function Performs Complete Mutation
%   It Takes One Parent (p1), Number Of Mutation Bits (nBits) And Maximum
%   Available value For Bits (mx) And Produces One Child [c1]
c1 = p1;
r = randperm(numel(p1), nBit);
for i = 1:numel(r)
    c1(r(i)) = mx-c1(r(i));
end
end
