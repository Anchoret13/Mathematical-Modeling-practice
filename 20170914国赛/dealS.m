%dealS
syms jmax
jmax=835;

for j=1:1:355
    S(1,j)=60*LocateUsr1(j,4)+LocateUsr1(j,5);
end
for j=1:1:jmax
    S(4,j)=LocateUsr1(j,6);
end
