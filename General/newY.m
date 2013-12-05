
NY=size(Y,1);
NewY=[];

for i=1:NY
    if Y(i)==0
        vector=[1 0 0 0 0 0 0];
        NewY=[NewY;vector];
    elseif Y(i)==1
        vector=[0 1 0 0 0 0 0];
        NewY=[NewY;vector];
    elseif Y(i)==2
        vector=[0 0 1 0 0 0 0];
        NewY=[NewY;vector];
    elseif Y(i)==3
        vector=[0 0 0 1 0 0 0];
        NewY=[NewY;vector];
    elseif Y(i)==4
        vector=[0 0 0 0 1 0 0];
        NewY=[NewY;vector];
    elseif Y(i)==5
        vector=[0 0 0 0 0 1 0];
        NewY=[NewY;vector];
    elseif Y(i)==6
        vector=[0 0 0 0 0 0 1];
        NewY=[NewY;vector];
    end
end

