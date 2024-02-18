clc;
clear;
close all;

original_image=imread('test1.jpg');
if size(original_image,3)==3
    gray_image=rgb2gray(original_image);
else
    gray_image=original_image;
end

%apply shobel
sobel_edge=edge(gray_image,"Sobel");
%apply Robert
robert_edge=edge(gray_image,"Roberts");
%apply prewitt
prewitt_edge=edge(gray_image,"Prewitt");

%display
figure;
subplot(3,3,1);
imshow(sobel_edge);
title("Sobel Edge");
subplot(3,3,2);
imshow(robert_edge);
title("Robert Edge");
subplot(3,3,3);
imshow(prewitt_edge);
title("Prewitt edge");