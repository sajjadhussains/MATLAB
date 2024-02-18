clc;
clear;
close all;

input_image=imread('test1.jpg');
fixed_size=[200,200];
image_resized=imresize(input_image,fixed_size);
figure;
subplot(3,1,1);
imshow(image_resized);
title('Original Image');
% complement using built in function
complement_built_in=imcomplement(image_resized);
subplot(3,1,2);
imshow(complement_built_in);
title('complement using built in function');

%complement using user defined function
complement_image_user=255-image_resized;
subplot(3,1,3);
imshow(complement_image_user);
title('Complement Using User defined');