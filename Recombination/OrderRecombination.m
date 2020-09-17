function [c1,c2] = OrderRecombination(p1,p2)
%   This Function Performs Order Recombination
%   It Takes Two Parents (p1,p2) And Produces Two Child [c1,c2]
c1 = NaN(1,numel(p1));
c2 = c1;
r = randi(numel(p1),1,2);
r = sort(r);
c1(r(1):r(2)) = p1(r(1):r(2));
c2(r(1):r(2)) = p2(r(1):r(2));
j = r(2)+1;
k = j;
for i = 1:numel(p1)
    if j > numel(p1)
        j=1;
    end
    if k > numel(p1)
        k=1;
    end
    if ~ismember(p2(k),c1)
        c1(j) = p2(k);
        j=j+1;
    end
    k = k+1;
end

j = r(2)+1;
k = j;
for i = 1:numel(p1)
    if k > numel(p1)
        k=1;
    end
    if j > numel(p1)
        j=1;
    end
    if ~ismember(p1(j),c2)
        c2(k) = p1(j);
        k=k+1;
    end
    j = j+1;
end
end

%p1 = [1 2 3 4 5 6 7 8 9]
%p2=[9 3 7 8 2 6 5 1 4]
