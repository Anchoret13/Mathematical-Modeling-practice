DEF=10;
A=rand(DEF,DEF);%����DEF*DEF��������� 
for i=1:DEF 
     A(i,i)=0%���Խ����ϵ�����Ϊ0 
end 
     A=10*A; 
     A=floor(A);%����ȥ�� 
       for i=1:DEF 
         for j=1:i 
             A(j,i)=A(i,j)%��A�����Ϊһ�������ǻ��������Ǿ��� 
         end 
       end 
       x=100*rand(1,DEF);y=100*rand(1,DEF);%����10������ĵ� 
     plot(x,y,'r+'); 
     
        for i=1:DEF 
    a=find(A(i,:)>0)%��A����ÿ�д���0�������ڸ��еĵ�ַ�ҳ�������a�� 
    
    
    
for j=1:length(a)   
     
     c=num2str(A(i,j)); %��A�е�Ȩֵת��Ϊ�ַ���    
     if c~='0'%����ʾΪ0��ֵ ��ΪA����Ϊ��������㲻���� 
     text((x(i)+x(j))/2,(y(i)+y(j))/2,c,'Fontsize',18);%��Ȩֵ��ʾ�����������м�   
     
     end 
     hold on; 
     
line([x(i) x(a(j))],[y(i) y(a(j))]);%���� 
end 
  
        end 
        
     title('�������ͼ'); 
     e=num2str(DEF); 
     legend(e);%���Ͻ���ʾ�ڵ�ĸ��� 
     for m=1:DEF 
         A(m,m)=m; 
         f=num2str(A(m,m)); 
     hold on;text((x(m)+x(m))/2,(y(m)+y(m))/2,f,'Fontsize',18);%��Ȩֵ��ʾ�����������м�  
     end 