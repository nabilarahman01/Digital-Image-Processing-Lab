I=imread('input2.jpg');

if size(I, 3) == 3
    I = rgb2gray(I);
end

[m,n]=size(I);
figure;
imshow(I);

S=imnoise(I, 'salt & pepper', 0.02);
%S=imnoise(I, 'gaussian', 0.02);

%min max median egula noise removing filter, can use function of these

figure;
imshow(S);
Rm=S;

for i=i:m-4
    for j=1:n-4
        N=S(i:i+4, j:j+4);
        tm=median(N(:));
        Rm(i,j)=tm;
    end
end

figure; imshow(Rm);
