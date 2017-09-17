
syms TrueDMIN
TrueDMIN=DLIE(1);
for i=1:1:imax
    DLIE(i)=0;
    for j=1:1:300
        DLIE(i)=DLIE(i)+(P(i,j)*W(i,j));
    end
    if DLIE(i)<TrueDMIN
        TrueDMIN=DLIE(i);
    end
end