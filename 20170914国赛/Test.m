syms i j k imax jmax kmax XJ DJ DJJ DD
syms d
syms S
syms beta lamda
lamda=1;
imax=1000;
jmax=1800;
kmax=3;
%现在还欠的矩阵：S(k,j)   还有Q的可用矩阵……脑子已经开始不清不楚了我要疯了 
%新加优先级 信誉度XYD(j)


syms l %组号
syms A B
A(1)=68.384;
A(2)=65.241;
A(3)=65.840;

syms W
syms d

for i=2:1:835
    for j=2:1:355
        d(i,j)=sqrt((LocateUsr1(j,2)-LocateTask(i,2))^2+(LocateUsr1(j,3)-LocateTask(i,3))^2);
    end
end

%S(1,j)=时间优先级
%S(2,j)=W(i,j) Done 
%S(3,j)=d(i,j) Done 
%S(4,j)=用户优先级 Done
for j=1:1:jmax
    S(4,j)=LocateUsr1(j,6);
end

for j=1:1:jmax
    S(1,j)=60*LocateUsr1(j,4)+S(j,5);
end

for i=1:1:imax
    PMAX(i)=0;
    for j=1:1:jmax
        XJ(j)=1;
        for k=1:1:kmax
            XJ(j)=XJ(j)*S(k,j)^beta(k);
        end
        DJ(j)=d(i,j)^lamda*XJ(j);
        DD(i)=0;
        for a=j:1:jmax
            DD(i)=DD(i)+d(i,a)^lamda*XJ(j);
        end
        P(i,j)=DJ(j)/DD(i);
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


syms yita %效率
syms PQIUHE DQIUHE

PQIUHE=0;
DQIUHE=0;
for i=1:1:imax
    for j=1:1:jmax
        PQIUHE=PQIUHE+P(i,j)*Q(j);
        DQIUHE=DQIUHE+(P(i,j)*W(i,j));
    end
end
yita = PQIUHE/DQIUHE;

for i=1:1:imax
    for j=1:1:jmax
        W(i,j)=A(1)+B(i,j)*d(i,j);
    end
end

%所有变量表示完毕

syms radium %初始服务半径 

