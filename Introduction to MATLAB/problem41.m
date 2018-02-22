clear
M=magic(5)
sum(M)
sum(M')
M(1,:)
M(:,3)
M(2:end,1:3)
for a=1:5
    for b=1:5
        if M(a,b)>10
           n(a,b)=10;
        elseif M(a,b)<4
           n(a,b)=4;
        else
           n(a,b)=0;  
        end
    end
end