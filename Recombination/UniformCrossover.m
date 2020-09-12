function [c1,c2] = UniformCrossover(p1,p2)
%   This Function Performs Uniform Crossover
%   It Takes Tow Parents (p1,p2) And Produces Two Children [c1,c2]
c1 = p1;
c2 = p2;
for i = 1:numel(p1)
    r = randi([0,1]);
    disp(r);
    if r == 0
        [c2(i), c1(i)] = deal(c1(i), c2(i));
    end
end

