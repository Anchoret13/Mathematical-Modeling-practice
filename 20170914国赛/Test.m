syms i j k imax jmax kmax XJ DJ DJJ DD
syms d
syms S
syms beta lamda
lamda=1;
imax=800;
jmax=350;
kmax=3;


syms l %组号
syms A B
A(1)=68.384;
A(2)=65.241;
A(3)=65.840;

syms W
syms d

for i=2:1:835
    for j=2:1:355
        d(i,j)=distance(LocateUsr1(j,2),LocateUsr1(j,3),LocateTask(i,2),LocateTask(i,3));
    end
end

%S(2,j)=W(i,j) Done 
%S(3,j)=d(i,j) Done 
for j=1:1:355
    S(4,j)=LocateUsr1(j,6);
end

%for j=1:1:355
%    S(1,j)=60*LocateUsr1(j,4)+S(j,5);
%end
DD=0;
%for i=2:1:800
%    for j=2:1:300
%        DD=DD+d(i,j)^lamda*XJ(j);
%    end
%end
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


beta(1)=1;
beta(2)=1;
beta(3)=1;

if d(i,j)<0.0499
    B(i,j)=20;
elseif (0.05<d(i,j)<0.1)
    B(i,j)=25;
elseif (d(i,j)>0.1)
    B(i,j)=30;
end


syms Q
Q(1)=0.957895;
Q(2)=0.361386;
Q(3)=0.602709;


syms yita 
syms PQIUHE DQIUHE

PQIUHE=0;
DQIUHE=0;
for i=1:1:imax
    for j=1:1:jmax
        PQIUHE=PQIUHE+P(i,j)*Q(1);
        DQIUHE=DQIUHE+(P(i,j)*W(i,j));
    end
end
yita = PQIUHE/DQIUHE;

for i=1:1:imax
    for j=1:1:jmax
        W(i,j)=A(1)+B(i,j)*d(i,j);
    end
end


syms radium 

