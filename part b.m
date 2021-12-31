I=imread('C:\Users\MALITHWOX\Desktop\edu windsor\sem 4\automotive sensor\lena.bmp');
%imshow(I);
Noiced = imnoise(I,'gaussian',0,0.01);

% reference image C1 = edge(I,'canny',0.1,1);
%upper threshold=0.1 lower threshold=0.04
C1 = edge(I,'canny',[0.04 0.1],1); % reference image 

C2 = edge(I,'canny',[0.04 0.1],2);

figure;
imshowpair(C1,C2,'montage')
title('Gaussian Kernel=1                         Gaussian Kernel=2');
