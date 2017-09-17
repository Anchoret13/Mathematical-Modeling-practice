%dealW

syms imax jmax
imax=1800;
jmax=835;



for i=1:1:imax
    for j=1:1:jmax
        W(i,j)=A(1)+B(i,j)*d(i,j);
    end
end