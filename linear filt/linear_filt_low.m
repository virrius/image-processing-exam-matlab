img=imread('chess.jpg');
d_img=double(im2gray(img));

figure("Name", "original"),imshow(d_img,[])


cernel=ones(10,10)/25;
res=imfilter(d_img, cernel);
figure("Name", "None"),imshow(res,[])

res=imfilter(d_img, cernel,'replicate');
figure("Name", "replicated"),imshow(res,[])

res=imfilter(d_img, cernel,'circular');
figure("Name", "circular"),imshow(res,[])

res=imfilter(d_img, cernel,'symmetric');
figure("Name", "symmetric"),imshow(res,[])