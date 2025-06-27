img = imread('cameraman.png');
figure;
imshow(img);

% Extract LSB (1st bit) plane
% Bitwise AND with 1 extracts the LSB
% Eg: 1011 Bitwise AND 0001 = 0001
% Eg: 1010 Bitwise AND 0001 = 0000
plane_1 = bitand (img, 1);

% plane_1 only consists of 0 and 1, and in uint8 matrix, both of these values indicate black/black shade.
% We convert it to logical so that matlab thinks the image has only two intensity, Black (0) and White (1)
% We can also multiply plane_1 with 255 to get the same result
figure;
imshow(logical(plane_1));

% Now we perform a right-shift to move the 2nd bit to LSB position
% Eg: Right-Shift of 110 is 011
% bistra takes two parameter. First is the image you want to right shift, 
% and Second parameter is how many bits you want to shift 
img = bitsra(img, 1);
% Right shift can be also acheived by making an integer division of 2, eg: img_copy = uint8 (img_copy / 2)

% Just like before we perform a bitwise and operation to extract LSB
plane_2 = bitand (img, 1);

figure;
imshow(plane_2 .* 255);

% Then we again perform right-shift and bitwise and to extract next bit plane
% This operations can be looped to get all the bitplanes.