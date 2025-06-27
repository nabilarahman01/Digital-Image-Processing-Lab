I=imread('input2.jpg');

if size(I, 3) == 3
    I = rgb2gray(I);
end

[m,n]=size(I);

imshow(I);

b=input('filter size: ');
z=ones(b);
[p,q]=size(z);
w=1:p;
x=round(median(w));

anz=zeros(m+2*(x-1),n+2*(x-1));

for i=x:(m+(x-1))
    for j=x:(n+(x-1))
        anz(i,j)=I(i-(x-1),j-(x-1));
    end
end
figure;
imshow(uint8(anz));

%then traversing code. this is incomplete

%gaussian e imfilter use korchi

