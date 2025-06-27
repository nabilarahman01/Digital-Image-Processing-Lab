img1 = imread('input1.jpg');
img2 = imread('input2.jpg');

%figure; imshow(img1);

[rows, cols, ~] = size(img1);

output= uint8(zeros(rows, cols, 3));

div_col= floor(cols/6);

for i = 1:6
    start_col = (i - 1) * div_col + 1;
    end_col= start_col + div_col - 1;

    if i == 6
        end_col = cols;
    end

    if mod(i, 2) == 1
        output(:, start_col:end_col, :)= img1(:, start_col:end_col, :);
    else
        output(:, start_col:end_col, :) = img2(:, start_col:end_col, :);
    end
end


imshow(output);
imwrite(output, 'output.jpg');