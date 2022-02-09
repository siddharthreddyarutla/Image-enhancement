clc ;
clear;
close;
img= imread ("C:\Users\SIDHARTHA REDDY\Desktop\images.jpg");
img=rgb2gray(img);
I =im2double(img) ;
J = imcomplement(I);// Image Negative
subplot(2,3,1);
title('Original Image');
imshow(img);
subplot(2,3,2);
title('Image Negative');
imshow(J);
gamma=1.5
k=I.^gamma;// Gamma Transformation
subplot(2,3,3);
title('Gamma transformation');
imshow(k);
contrast1=1./(1+(0.2./(I+%eps)).^4); // Contrast Enhancement
contrast2=1./(1+(0.5./(I+%eps)).^5);
contrast3=1./(1+(0.7./(I+%eps)).^10);
subplot(2,3,4),imshow(contrast1);title('Contrast enhancement0.2');
subplot(2,3,5),imshow(contrast2);title('Contrast enhancement0.5');
subplot(2,3,6),imshow(contrast3);title('Contrast enhancement0.7');
