I1=imread('MickyMouse.jpg');
figure; imshow(I1);

[r,c,a]=size(I1);
r2=floor(r/2);

for i=r2:r
    for j=1:c/2
        I1(i,j,1)=0;
        I1(i,j,2)=255;
        I1(i,j,3)=0;    
    end
end

figure; imshow(I1);