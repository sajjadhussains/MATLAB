clc
clear
close all

image1=imread('test1.jpg');
image2=imread('test2.jpg');

fixed_size=[400,400];

image1_resized=imresize(image1,fixed_size);
image2_resized=imresize(image2,fixed_size);

addition_result=imadd(image1_resized,image2_resized);
subtraction_result=imsubtract(image1_resized,image2_resized);
multiplication_result=immultiply(image1_resized,image2_resized);

epsilon=1e-6;
image2_resized_adjusted=image2_resized+epsilon;
division_result=imdivide(image1_resized,image2_resized_adjusted);
%result
figure
subplot(3,2,1);
imshow(addition_result);
title('Addition');

subplot(3,2,2);
imshow(subtraction_result);
title('Subtraction');

subplot(3,2,3);
imshow(multiplication_result);
title('Multiplication');

subplot(3,2,4);
imshow(division_result);
title('Division');

% Display image1 separately
subplot(3,2,5);
imshow(image1);
title('Image1');

% Empty subplot for the sixth position
subplot(3,2,6);
imshow(image2);
title('Image 2')
axis off; % Turn off axis for empty subplot
