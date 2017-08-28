DEF=10;
A=rand(DEF,DEF);%产生DEF*DEF的随机矩阵 
for i=1:DEF 
     A(i,i)=0%将对角线上的数置为0 
end 
     A=10*A; 
     A=floor(A);%向下去整 
       for i=1:DEF 
         for j=1:i 
             A(j,i)=A(i,j)%将A矩阵变为一个上三角或者下三角矩阵 
         end 
       end 
       x=100*rand(1,DEF);y=100*rand(1,DEF);%产生10个随机的点 
     plot(x,y,'r+'); 
     
        for i=1:DEF 
    a=find(A(i,:)>0)%将A矩阵每行大于0的数的在该行的地址找出来放在a中 
    
    
    
for j=1:length(a)   
     
     c=num2str(A(i,j)); %将A中的权值转化为字符型    
     if c~='0'%不显示为0的值 因为A矩阵为零代表两点不相连 
     text((x(i)+x(j))/2,(y(i)+y(j))/2,c,'Fontsize',18);%将权值显示在两点连线中间   
     
     end 
     hold on; 
     
line([x(i) x(a(j))],[y(i) y(a(j))]);%连线 
end 
  
        end 
        
     title('随机拓扑图'); 
     e=num2str(DEF); 
     legend(e);%左上角显示节点的个数 
     for m=1:DEF 
         A(m,m)=m; 
         f=num2str(A(m,m)); 
     hold on;text((x(m)+x(m))/2,(y(m)+y(m))/2,f,'Fontsize',18);%将权值显示在两点连线中间  
     end 