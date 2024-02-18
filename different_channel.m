clc;
clear;
close all;
input_image=imread("test1.jpg");
image_resized=imresize(input_image,[400,400]);
%differenet different channels

red_channel=image_resized(:,:,1);%red
green_channel=image_resized(:,:,2);%green
blue_channel=image_resized(:,:,3);%blue channel

figure;
subplot(4,4,1);
imshow(image_resized);
title('Original Image');
subplot(4,4,2);
imshow(red_channel);
title('Red Channel');
subplot(4,4,3);
imshow(green_channel);
title('Red Channel');
subplot(4,4,4);
imshow(blue_channel);
title('Blue Channel')