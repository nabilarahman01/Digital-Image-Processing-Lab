I=imread('input2.jpg');

figure;
imshow(I);

%I=im2double(I);

[r,c]=size(I);

A=9999;
B=-9999;

for i = 1:r
    for j = 1:c
        if I(i, j) < A
            A = I(i, j);
        end
        if I(i, j) > B
            B = I(i, j);
        end
    end
end

D= B-A;
%imageinfo('input2.jpg');
M=(2^8)-1;

R=(((I-A)/D)*M)+A;

figure;
imshow(R);
imwrite(R,'output2.jpg');

h1 = zeros(1, 256);
h2 = zeros(1, 256);

for i1 = 1:r
    for j1 = 1:c
        h1(I(i1,j1)+1)=h1(I(i1,j1)+1)+1;
    end
end

[r1,c1]=size(R);

for i2 = 1:r1
    for j2 = 1:c1
        h2(R(i2,j2)+1)=h2(R(i2,j2)+1)+1;
    end
end 

figure;
subplot(1,2,1);
bar(h1);
title('histogram of input image');

subplot(1,2,2);
bar(h2);
title('histogram of output image');

figure;
subplot(1, 2, 1);
imshow(I);
title('Input Image');

subplot(1, 2, 2);
imshow(R);
title('Output Image');

