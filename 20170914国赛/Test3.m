syms D2 i2 imax jmax
syms k    %这里的k和之前的k意义不同嗷  是第k个打包任务
imax=1800;
jmax=835;
syms kmax
kmax=imax;

syms D2P1 D2P2
D2P1=0; 
D2P2=0;
for i2=1:1:1800
    for j=1:1:300
        D2P1=D2P1+PMAX(i2)*(A(1)+B(i2,j)*d(i2,j));
    end
end
syms C
C=0.9;
syms d2
syms n
for k=1:1:kmax
    for j=1:1:jmax
        D2P2=D2P2+n(k)*C*P(k)*(A(1)+B(k,j)*d2(k,j));
    end
end
syms KKMAX
KKMAX=0;
for i=1:1:imax
    for k=1:1:kmax
        if((P(i)+P(k))>KKMAX)
            KKMAX=P(i)+P(k);
        end
    end
end

disp(KKMAX);