I = imread('input2.jpg');

if size(I, 3) == 3
    I = rgb2gray(I);
end

figure;
imshow(I);
title('Original Image');

[r, c] = size(I);
bitP = cell(1, 8);

for k = 1:8
    bitP{k} = bitand(I, 2^(k-1));
end


combined_image = uint8(bitP{1}) + uint8(bitP{2}) + uint8(bitP{7}) + uint8(bitP{8});

figure;
for sp = 1:10
    if sp <= 8
        subplot(2, 5, sp);
        imshow(bitP{sp});
        title(['Bit Plane ', num2str(sp)]);
    elseif sp == 9
        subplot(2, 5, sp);
        imshow(I);
        title('Original Image');
    elseif sp == 10
        subplot(2, 5, sp);
        imshow(combined_image);
        title('Combined Image (1,2,7,8)');
    end
end

imwrite(combined_image, 'output2.jpg');
