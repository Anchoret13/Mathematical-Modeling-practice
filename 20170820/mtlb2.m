%���ؿ���
syms x y z t;
t=0:pi/100:2*pi;
%y=0.89*cos(t);
%z=0.6*sin(t);
%x=2.5;
%��Բ��
y=0.89*cos(t);z=0.6*sin(t);x1=linspace(0,2.45,length(z));
x=[meshgrid(x1)]';
y=meshgrid(y);
z=meshgrid(z);
surf(x,y,z)
axis equal
for k=1:4
view(-37.5,10*k)
pause
end
[y,z]=meshgrid(y,z);
x=0:0.1:2.45;
surf(x,y,z);

%��ƽ��
%syms h a
%h=1;
%ezmesh(-a*tan(4.1)+0.4*tan(4.1)+h-0.6,[-1 3]);
%axis squre

%����ƽ�治����ֱ����ΪԼ���������ˣ�������

