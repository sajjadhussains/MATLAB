clc;
clear;
close all;

rgb_image=imread('test1.jpg');
gray_image=rgb2gray(rgb_image);

%display the gray scale image
figure;
subplot(3,3,1);
imshow(gray_image);
title('Gray Image');

%display histogram using builtin function
subplot(3,3,2);
imhist(gray_image);
title('Histogram using built in function');
%calculate histogram without using built in function
histogram_image=zeros(256,1);
[m,n]=size(gray_image);
for i=1:m
    for j=1:n
        intensity=gray_image(i,j);
        histogram_image(intensity+1)=histogram_image(intensity+1)+1;
    end
end
subplot(3,3,3);
bar(histogram_image);
title('histogram without built in');