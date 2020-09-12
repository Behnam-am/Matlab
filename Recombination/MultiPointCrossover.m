function [c1, c2] = MultiPointCrossover(p1, p2, pts)
%   This Function Performs Multi Point Crossover
%   It Takes Tow Parents (p1,p2), Number Of Points And Produces Two Children [c1,c2]
r = randi(numel(p1),1,pts);
r = sort(r);
%disp(r);
r(pts+1) = numel(p1);
en=0;
c1=[];
c2=[];
for i = 1:pts+1
    st = en+1;
    en = r(i);
    if mod(i,2) ~= 0
        c1 = cat(2,c1,p1(st:en));
        c2 = cat(2,c2,p2(st:en));
    else
        c1 = cat(2,c1,p2(st:en));
        c2 = cat(2,c2,p1(st:en));
    end
end

