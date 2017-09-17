%dealP
syms i j k imax jmax kmax XJ DJ DJJ DD
%syms d
syms S
syms beta lamda
lamda=1;
imax=1800;
jmax=835;

for i=1:1:imax
    PMAX(i)=0;
    for j=1:1:300
        XJ(j)=1;
        XJ(j)=XJ(j)*S(1,j);
        DJ(j)=d(i,j)^lamda*XJ(j);
        DD=DD+d(i,j)^lamda*XJ(j);
        P(i,j)=DJ(j)/DD;
        if P(i,j)>PMAX(i)
            PMAX(i)=P(i,j);
        end
    end
end