function [c1,c2] = WholeArithmetic(p1,p2)
%   This Function Performs Whole Arithmetic Recombination
%   It Takes Two Parents (p1,p2) And Produces Two Child [c1,c2]
a = (rand()-eps/2)/(1-eps);
c1 = (p1+p2)*a;
c2 = (p1+p2)*(1-a);
end

