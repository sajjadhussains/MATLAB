
image=imread('test1.jpg');
subplot(2,2,1),imshow(image),title('Original Image'); 

noisy_image=imnoise(image,'salt & pepper',0.05);
subplot(2,2,2),imshow(noisy_image),title('Noisy Image');

%Mean filter
mean_filter = ones(3,3)/9;
filter_image = imfilter(noisy_image,mean_filter);
subplot(2,2,3),imshow(filter_image),title('Mean filtered image');

%Mean Square Error (MSE) calculation (Mean Filter)
mse_mean=immse(filter_image,image);


%Median filter
red_channel=image(:,:,1);
green_channel=image(:,:,2);

blue_channel=image(:,:,3);

red_channel= medfilt2(red_channel,[3 3]);
green_channel= medfilt2(green_channel,[3 3]);
blue_channel= medfilt2(blue_channel,[3 3]);
filter_image=cat(3, red_channel, green_channel, blue_channel);
subplot(2,2,4),imshow(filter_image),title('Median filtered image');

%Mean Square Error (MSE) calculation (Median Filter)
mse_median=immse(filter_image,image);

fprintf('Mean Square Error (MSE) for Mean Filter: %.4f\n', mse_mean);
fprintf('Mean Square Error (MSE) for Median Filter: %.4f\n',mse_median);