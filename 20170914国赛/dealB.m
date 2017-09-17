%dealB
imax=1800;
jmax=835;
syms A B
A(1)=66.3154;
A(2)=65.21;
A(3)=65.9585;

for i=1:1:imax
    for j=1:1:jmax
        if d(i,j)<0.029
            B(i,j)=20;
        elseif (0.03<d(i,j)<0.059)
            B(i,j)=25;
        elseif (0.06<d(i,j)<0.09)
            B(i,j)=30;
        else
            P(i,j)=0;
        end
    end
end