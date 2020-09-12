function [c1,c2] = SimpleRecombination(p1,p2)
%   This Function Performs Simple Recombination
%   It Takes Two Parents (p1,p2) And Produces Two Child [c1,c2]
r = randi(numel(p1));
a = (rand()-eps/2)/(1-eps);
c1 = cat(2, p1(1: r));
c2 = cat(2, p2(1: r));
for i = r+1:numel(p1)
    c1(i) = (p1(i)+p2(i))*a;
    c2(i) = (p1(i)+p2(i))*(1-a);
end
end

