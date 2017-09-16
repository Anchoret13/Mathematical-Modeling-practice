%dealData3
syms rawUnfinished
rawUnfinished=[
    [32, 22.52394954, 113.9434416, 65.5, 0];
    [35, 22.54927013, 114.1317447, 66.5, 0];
    [37, 22.7563793, 114.0421356, 70, 0];
    [38, 22.64144071, 114.4227421, 75, 0];
    [39, 22.71166007, 114.0728836, 66.5, 0];
    [40, 22.60649323, 114.1241536, 66, 0];
    [41, 22.66229971, 114.0729969, 65, 0];
    [43, 22.73802844, 114.264097, 67, 0];
    [44, 22.62558348, 114.1549664, 69, 0];
    [45, 22.65265496, 114.0272292, 66, 0];
    [46, 22.78892197, 113.8966327, 66, 0];
    [47, 22.70103564, 114.2442921, 67, 0];
    [48, 22.63154051, 114.1214928, 67, 0];
    [49, 22.6417148, 114.195533, 68.5, 0];
    [50, 22.68940336, 114.3454188, 70, 0];
    [51, 22.63010042, 114.0638327, 66.5, 0];
    [52, 22.66391673, 114.0717177, 65.5, 0];
    [53, 22.750664, 114.378843, 70, 0];
    [54, 22.72272561, 114.0738016, 67, 0];
    [55, 22.64138032, 114.2299818, 67, 0];
    [56, 22.77640754, 114.3095878, 73, 0];
    [57, 22.58706534, 113.9057614, 66, 0];
    [58, 22.69339571, 114.1474874, 69, 0];
    [59, 22.6040497, 114.0586138, 66, 0];
    [60, 22.6376364, 114.0679162, 65.5, 0];
    [61, 22.65788521, 114.0747723, 65.5, 0];
    [62, 22.61781817, 114.1572608, 67.5, 0];
    [63, 22.64144071, 114.4227421, 75, 0];
    [64, 22.78139876, 114.3008065, 73, 0];
    [65, 22.72294122, 114.2777156, 67, 0];
    [66, 22.67470711, 114.2209333, 67, 0];
    [67, 22.66283814, 114.0263974, 65, 0];
    [68, 22.65776972, 114.0794934, 65.5, 0];
    [69, 22.65691327, 114.2100928, 66, 0];
    [70, 22.73859039, 113.8184493, 66.5, 0];
    [71, 22.71636331, 114.322257, 70, 0];
    [72, 22.52331401, 114.0466386, 66.5, 0];
    [73, 22.65301422, 114.2124549, 66, 0];
    [74, 22.5331754, 114.0831342, 66.5, 0];
    [75, 22.59955905, 114.130363, 66.5, 0];
    [76, 22.65027837, 113.9366241, 68.5, 0];
    [79, 22.74300109, 113.9950401, 71, 0];
    [80, 22.63495417, 114.0448196, 66, 0];
    [82, 22.61556463, 114.1524159, 67, 0];
    [83, 22.68447006, 114.000085, 66, 0];
    [84, 22.6651428, 114.0200019, 65.5, 0];
    [85, 22.69331552, 113.8170784, 66, 0];
    [86, 22.75600203, 113.8513612, 66.5, 0];
    [87, 22.73335619, 113.8312919, 66, 0];
    [88, 22.7778578, 113.9170043, 70, 0]
];


syms radium %��ʼ����뾶 
radium=1000;
for i=1:1:50
    for j=1:1:835
        RNM(i,j)=distance(rawUnfinished(i,2),rawUnfinished(i,3),LocateTask(i,2),LocateTask(i,3));
        if RNM(i,j)<radium
            radium=RNM(i,j);
        end
    end
end