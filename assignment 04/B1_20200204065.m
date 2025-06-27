I=imread('input.jpg');

if size(I,3)==3
    I= rgb2gray(I);
end
sig= input('Enter the value of sigma: ');

[r,c]= size(I);

%x= [-2 -1 0 1 2; -2 -1 0 1 2; -2 -1 0 1 2; -2 -1 0 1 2; -2 -1 0 1 2];
%y= [-2 -2 -2 -2 -2; -1 -1 -1 -1 -1; 0 0 0 0 0; 1 1 1 1 1; 2 2 2 2 2];

kernel_size=5;
d=floor(kernel_size/2);

x = zeros(kernel_size, kernel_size);
y = zeros(kernel_size, kernel_size);

for i = 1:kernel_size
    for j = 1:kernel_size
        x(i, j) = j - (d + 1);
        y(i, j) = i - (d + 1);
    end
end


G = (1 / (2 * pi * sig^2)) * (exp(-(x.^2 + y.^2) / (2 * sig^2)));
G = G / sum(G(:));

output= double(I);

filtered= imfilter(double(I),G);

output(floor(r/2):end, :)= filtered(floor(r/2):end,:);

output= uint8(output);

figure;
subplot(1,2,1);
imshow(I);
title('input image');
subplot(1,2,2);
imshow(output);
title('output image');

imwrite(output,'output.jpg');




