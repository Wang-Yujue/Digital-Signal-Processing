clear
G=[.6 1.5 2.3 -.5;8.2 .5 -.1 -2;5.7 8.2 9 1.5;.5 .5 2.4 .5;1.2 -2.3 -4.5 .5];
size=size(G);
find(G==0.5)
find(G<0)

n=[size];
m=[size];
for a=1:5
    for b=1:4
        if G(a,b)==0.5 || G(a,b)==-0.5
            n(a,b)=1;
        else
            n(a,b)=0;  
    end
    end
end
for c=1:5
    for d=1:4
        if G(c,d)<0
            m(c,d)=-1;
        else
            m(c,d)=0;
        end
    end
end