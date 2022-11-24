clc;
clf;
clear all;
close all;
pkg load image;

# a and b
img1=imread('parrots.jpg');
whos img1

# c and d
img_gray=rgb2gray(img1);
subplot(1,2,1),imshow(img1),title('Original image'); #print original image.
subplot(1,2,2),imshow(img_gray),title('Converted gray image'); #print gray image.
