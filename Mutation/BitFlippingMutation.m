function [c1] = BitFlippingMutation(p1,nBit)
%   This Function Performs Bit-Flipping Mutation
%   It Takes One Parent (p1) And Number Of Flipping Bits (nBits)
%   And Produces One Child [c1]
c1 = p1;
r = randperm(numel(p1), nBit);
for i = 1:numel(r)
    c1(r(i)) = ~c1(r(i));
end
end
