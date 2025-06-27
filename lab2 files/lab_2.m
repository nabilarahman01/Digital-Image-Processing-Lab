%img1=imread('cameraman.png');

%imageinfo('cameraman.png'); %imginfo dileo same

%imtool(img1); %column age row pore in this indexing

%subplot(2, 1, 1); %row, column, position

%x=[0,1,2,3,4,5,6,7,8,9,10];
%y1=sin(x);

%plot(x,y1);

%subplot(2,1,2); %using this to get two plots in one fig

%y2=sin(5*x);

%plot(x,y2);

%I1=imread('coins.jpg');
%I2=imread('peppers_color.jpg');

%subplot(3,2,1);
%imshow(I1);
%subplot(3,2,4);
%imshow(I2)


I2=imread('peppers_color.jpg');

I=imread('cameraman.png');
h=zeros(1,256);
[row,col]=size(I);

for i=1:row
    for j=1:col
        %temp=I(i,j)+1;
        h(I(i,j)+1)=h(I(i,j)+1)+1;
    end
end
figure;
bar(h);

grayi2=rgb2gray(I2);

%imageinfo(grayi2);

h1=zeros(1,256);
[row1,col1]=size(grayi2);

for i1=1:row1
    for j1=1:col1
        %temp=I(i,j)+1;
        h1(grayi2(i1,j1)+1)=h1(grayi2(i1,j1)+1)+1;
    end
end
figure;
bar(h1);


%figure;
%subplot(1,2,1);
%imshow(I);
%subplot(1,2,2);
