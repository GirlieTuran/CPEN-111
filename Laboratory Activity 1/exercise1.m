clc;
clf;
close all;
clear all;
pkg load image;

Img1 = imread ('fruits.png');
Img1_info = imfinfo('fruits.png') #to display the information of the image in the command window
figure(1), imshow(Img1)

Img2 = imresize(Img1,0.10); #reduce the spatial resolution of the original image
imwrite(Img2, 'fruits2.png');
whos Img2
figure(2), imshow('fruits2.png')

RGB2HSV = rgb2hsv(Img2); #convert from its color RGB image to HSV
imwrite(RGB2HSV, 'fruits3.png');
figure(3), imshow('fruits3.png')
