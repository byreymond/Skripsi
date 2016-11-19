filename='2012c.png';
im=imread(filename);
im2=imread('2000.png');

data=[];
nilai=[];

for y=129:192,
    for x=99:183,
        data=[data;im2(y,x,1) im2(y,x,2) im2(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end

for y=378:394,
    for x=490:509,
        data=[data;im2(y,x,1) im2(y,x,2) im2(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end

for y=337:361,
    for x=570:584,
        data=[data;im2(y,x,1) im2(y,x,2) im2(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end 


% lahan hijau
% (139,24),(207,89)
for y=24:89,
    for x=139:24,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end
%(497,321),(553,393)
for y=321:393,
    for x=497:553,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end
% (420,138),(512,218)
for y=138:218,
    for x=420:512,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end

%(115,324),(151,365)
for y=324:365,
    for x=115:151,
        data=[data;im(y,x,1) im(y,x,2) im(y,x,3)];
        nilai=[nilai;1 0 0 0];
    end
end



data=double(data)
P=data';
size(P)
T=nilai';