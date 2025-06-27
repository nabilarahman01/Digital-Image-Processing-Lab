i=imread('cameraman.png');

[r,c]=size(i);
i=im2double(i); %multiplication or division er jonno pic ke double e convert korbo
%n=255-i; %negative transformation in one line

l= 6*log(i+1);

subplot(1,2,1);
imshow(i);
subplot(1,2,2);
imshow(l);
