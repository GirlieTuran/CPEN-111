clc;
clf;
clear all;
close all;
pkg load image;

img2=imread('nature.jpg');

#converting original image to red image.
img_red=img2;
img_red(:,:,2)=0;
img_red(:,:,3)=0;

#converting original image to green image.
img_green=img2;
img_green(:,:,1)=0;
img_green(:,:,3)=0;

#converting original image to blue image.
img_blue=img2;
img_blue(:,:,1)=0;
img_blue(:,:,2)=0;

#converting jpg image to png image.
imwrite(img2,'nature.png');
imwrite(img_red,'nature_red.png');
imwrite(img_green,'nature_green.png');
imwrite(img_blue,'nature_blue.png');

subplot(2,2,1),imshow(img2),title('Original image'); #print original image.
subplot(2,2,2),imshow(img_red),title('Red  image'); #print gray image.
subplot(2,2,3),imshow(img_green),title('Green image'); #print gray image.
subplot(2,2,4),imshow(img_blue),title('Blue image'); #print gray image.
