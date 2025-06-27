I=imread('cameraman.png');

figure; imshow(I);

%histogram equalization

[r,c]=size(I);
S= r*c;
h=zeros(1,256);

for i1 = 1:r
    for j1 = 1:c
        h(I(i1,j1)+1)=h(I(i1,j1)+1)+1;
    end
end

pdf=zeros(1,256);
cdf=zeros(1,256);

for i1 = 1:r
    for j1 = 1:c
        pdf(I(i1,j1)+1)=h(I(i1,j1)+1)/S;
    end
end

cdf(1)=0;

for i1 = 1:r
    for j1 = 1:c
        cdf(I(i1,j1)+1)= pdf(I(i1,j1)+1)+ cdf(I(i1,j1));
    end
end
    

