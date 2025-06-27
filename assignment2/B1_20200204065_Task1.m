I=imread('input1.jpg');
figure;
imshow(I);

I=im2double(I);
c=20;
s=(1/c)*exp(I+1);

figure;
imshow(s);
imwrite(s,'output1.jpg');

figure;
subplot(1, 2, 1);
imshow(I);
title('Original Image');

subplot(1, 2, 2);
imshow(s);
title('Inverse Logarithm of Original Image');
