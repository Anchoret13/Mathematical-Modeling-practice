%蒙特卡洛
syms x y z t;
t=0:pi/100:2*pi;
%y=0.89*cos(t);
%z=0.6*sin(t);
%x=2.5;
%画圆柱
%y=0.89*cos(t);z=0.6*sin(t);x1=linspace(0,2.45,length(z));
%x=[meshgrid(x1)]';
%y=meshgrid(y);
%z=meshgrid(z);
%surf(x,y,z)
%axis equal
%for k=1:4
%view(-37.5,10*k)
%pause
%end
%[y,z]=meshgrid(y,z);
%x=0:0.1:2.45;
%surf(x,y,z);

%画平面
%syms h a
%h=1;
%ezmesh(-a*tan(4.1)+0.4*tan(4.1)+h-0.6,[-1 3]);
%axis squre

%喵的平面不画了直接作为约束条件好了（生气）
syms
x=-1.25+rand(1000,1)*2.5;
y=-0.89+rand(1000,1)*1.78;
z=-0.6+rand(1000,1)*1.2;

InBuck=find(y.^2/(0.89)^2+z.^2/(0.6)^2<1);
Oil=find(y.^2/(0.89)^2+z.^2/(0.6)^2<1&z<-x*tan(4.1)+0.4*tan(4.1)+1-0.6);
T=1/InBuck;
disp(T);
