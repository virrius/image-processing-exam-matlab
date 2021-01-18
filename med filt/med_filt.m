img = imread("Fig9.tif");
%noised = imnoise(gray,'salt & pepper',0.02);
figure; imshow(img);
res = medfilt2(img); 
figure; imshow(res); 
res = medfilt2(img, [6,6]);
figure; imshow(res); 
res = medfilt2(img, [10,10]);
figure; imshow(res); 