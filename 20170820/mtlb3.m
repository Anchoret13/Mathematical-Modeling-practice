%蒙特卡洛
syms x y z t;
t=0:pi/100:2*pi;


%喵的平面不画了直接作为约束条件好了（生气）
syms h
x=-0.89+rand(1000000,1)*1.78;
y=-0.6+rand(1000000,1)*1.2;
A=[0];
%myFacecolor=[0,0,0];
%scatter3(x,y);
%BasicS=length(find(x^2/(0.89)^2+y^2/(0.6)^2<1&y<h));
for h=159:1193
    BasicS=(length(find(x.^2/(0.89)^2+y.^2/(0.6)^2<1&y<h/1000-0.6))/1000000)*0.6*0.89*pi*2.45;
    A=[A BasicS];
end

%与原来数据的比较
v1=[50:50:2050 2053.83 2103.83 2105.06 2155.06 2205.06 2255.06 2305.06 2355.06 2404.98 2406.83 2456.83 2506.83 2556.83 2606.83 2656.83 2706.83 2756.83 2806.83 2856.83 2906.83 2906.91 2956.91 3006.91 3056.91 3106.91 3156.91 3206.91 3256.91 3306.91 3356.91 3406.91 3456.91 3506.91 3556.91 3606.91 3656.91 3706.91
];
v1=(v1+262)/1000;
h1=[159.02 176.14 192.59 208.50 223.93 238.97 253.66 268.04 282.16 296.03 309.69 323.15 336.44 349.57 362.56 375.42 388.16 400.79 413.32 425.76 438.12 450.40 462.62 474.78 486.89 498.95 510.97 522.95 534.90 546.82 558.72 570.61 582.48 594.35 606.22 618.09 629.96 641.85 653.75 665.67 677.63 678.54 690.53 690.82 702.85 714.91 727.03 739.19 751.42 763.70 764.16 776.53 788.99 801.54 814.19 826.95 839.83 852.84 866.00 879.32 892.82 892.84 906.53 920.45 934.61 949.05 963.80 978.91 994.43 1010.43 1026.99 1044.25 1062.37 1081.59 1102.33 1125.32 1152.36 1193.49];
h1=h1/1000;
v2=[747.86 797.86 847.86 897.86 947.86 997.86 1047.86 1097.79 1147.79 1197.73 1247.73 1297.73 1347.73 1397.73 1447.73 1497.73 1547.73 1597.73 1647.73 1697.73 1747.73 1797.73 1847.73 1897.73 1947.73 1997.73 2047.73 2097.73 2147.73 2197.73 2247.73 2297.73 2347.73 2397.73 2447.73 2497.73 2547.73 2597.73 2647.73 2697.73 2747.73 2797.73 2847.73 2897.73 2947.73 2997.73 3047.73 3097.73 3147.73 3197.73 3247.73 3297.73 3299.74
 ];
v2=(v2+262)/1000;
h2=[411.29 423.45 438.33 450.54 463.90 477.74 489.37 502.56 514.69 526.84 538.88 551.96 564.40 576.56 588.74 599.56 611.62 623.44 635.58 646.28 658.59 670.22 680.63 693.03 704.67 716.45 727.66 739.39 750.90 761.55 773.43 785.39 796.04 808.27 820.80 832.80 844.47 856.29 867.60 880.06 892.92 904.34 917.34 929.90 941.42 954.60 968.09 980.14 992.41 1006.34 1019.07 1034.24 1035.36];
h2=h2/1000;
h=159:1194;
h=h/1000;
disp(A);
plot(h,A,'b',h1,v1,'r');

