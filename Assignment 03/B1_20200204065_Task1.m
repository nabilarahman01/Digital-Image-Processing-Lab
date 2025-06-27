I = imread('input1.png');
if size(I, 3) == 3
    I = rgb2gray(I); 
end

figure;
subplot(2, 2, 1);
imshow(I);
title('Original Image');

[r, c] = size(I);
S = r * c; 
h = zeros(1, 256);

for i1 = 1:r
    for j1 = 1:c
        h(I(i1, j1) + 1) = h(I(i1, j1) + 1) + 1;
    end
end

subplot(2, 2, 2);
bar(h);
title('Histogram of Original Image');


pdf = h / S;

cdf = zeros(1, 256);
cdf(1) = pdf(1);
for k = 2:256
    cdf(k) = cdf(k - 1) + pdf(k);
end

L = 256; 
s = (cdf * (L - 1));

s = round(s);

equalized_image = zeros(r, c, 'uint8');
for i1 = 1:r
    for j1 = 1:c
        equalized_image(i1, j1) = s(I(i1, j1) + 1);
    end
end

H = zeros(1, 256);
for i1 = 1:r
    for j1 = 1:c
        H(equalized_image(i1, j1) + 1) = H(equalized_image(i1, j1) + 1) + 1;
    end
end

subplot(2, 2, 3);
imshow(equalized_image);
title('Equalized Image');

subplot(2, 2, 4);
bar(H);
title('Histogram of Equalized Image');

imwrite(equalized_image, 'output1.jpg');
