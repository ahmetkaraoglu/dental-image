clear;close all;
im=imread('1_teste.jpg');
fim=mat2gray(im);
level=graythresh(fim);
bwfim=im2bw(fim,level);
[bwfim0,level0]=fcmthresh(fim,0);
[bwfim1,level1]=fcmthresh(fim,1);
subplot(2,2,1);
imshow(fim);title('Original');
subplot(2,2,2);
imshow(bwfim);title(sprintf('Otsu,level=%f',level));
subplot(2,2,3);
imshow(bwfim0);title(sprintf('FCM0,level=%f',level0));
subplot(2,2,4);
imshow(bwfim1);title(sprintf('FCM1,level=%f',level1));