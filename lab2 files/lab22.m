i=imread('cameraman.png');

[r,c]=size(i);

i2(1:r/2, 1:c/2)=i(1:2:r, 1:2:c);

subplot(1,2,1);
imshow(i);
subplot(1,2,2);
imshow(i2);
