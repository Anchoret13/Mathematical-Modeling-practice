syms Dpiepie
syms ipiepie
syms kpie

syms Dpppart1 Dppart2
Dpppart1=0;
Dpppart2=0;

for ipiepie=1:1:imax
    for j=1:1:jmax
        Dpppart1=Dpppart1+PMAX(ipiepie)*(A(1)+B(ipiepie,j)*d(ipiepie,j))
    end
end

for ipiepie=1:1:imax
    for j=1:1:jmax
        