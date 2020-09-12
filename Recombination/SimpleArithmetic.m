function [c1,c2] = SimpleArithmetic(p1,p2)
%   This Function Performs Simple Arithmetic Recombination
%   It Takes Two Parents (p1,p2) And Produces Two Child [c1,c2]
c1 = p1;
c2 = p2;
r = randi(numel(p1));
a = (rand()-eps/2)/(1-eps);
c1(r) = (p1(r)+p2(r))*a;
c2(r) = (p1(r)+p2(r))*(1-a);
end

