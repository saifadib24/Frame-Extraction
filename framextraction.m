%%
a=VideoReader('proja3.mp4');

n=1;
while hasFrame(a)
    img = readFrame(a);
    imwrite(img,strcat('images_',num2str(n),'.jpg'));
    n=n+1;
end
%%
    imgN= 218;
    imgR= imread(strcat('images_',num2str(imgN),'.jpg'));
    imshow(imgR);
                
%%
imgQ= imresize(imgR,[1072 1920]);
[r,c,rgb]=size(imgQ);
Blocks = mat2cell(imgQ, 16*ones(1,r/16), 16*ones(1,c/16), rgb);
%celldisp(Blocks)
%%
%imshow(Blocks{1,1});
c= Blocks{1,1} - Blocks{1,1};
imshow (c);
c