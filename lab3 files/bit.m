I=imread('coins.jpg');

figure; imshow(I);

%histogram equalization

[r,c]=size(I);
%S= r*c;
b0=uint8(zeros(r,c));

% for i=1:r
%     for j=1:c
%         b0(i,j)=bitand(I(i,j),1);
%     end
% end

bitP=cell(1,8);

for k=1:8
    bitP{k}=bitand(I,2^(k-1));
end

figure;
% subplot(3,3,1);
% imshow(I);
% title('original');
for sp=1:9
    if(sp==9)
        subplot(3,3,sp);
        imshow(I);
        title('original');
    else       
        subplot(3,3,sp);
        imshow(bitP{sp});
        title('bit',sp);
    end
end

