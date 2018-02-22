n=1;
for v=-1:0.1:1
    n=n+1;
    if v<0
       s(n)=-1;
    elseif v>0
        s(n)=1;
    else
        s(n)=0;
    end
    end