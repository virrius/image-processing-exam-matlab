img=imread('chess.jpg');
%d_img=double(im2gray(img));
d_img = img;
%cernel=fspecial('laplacian',0);
cernel = [1, 1, 1; 1, -8, 1; 1, 1, 1];
%cernel = [1, 0, 1; 0, -4, 0; 1,0, 1];
res=imfilter(d_img, cernel, 'replicate');
figure("Name", "laplas chess"),imshow(res,[])


img = imread('Fig7.tif');
figure("Name", "original moon"),imshow(img,[]);
%d_img=double(im2gray(img));
d_img = img;
res=imfilter(d_img, cernel, 'replicate');
figure("Name", "laplas moon"),imshow(res,[])

bin_res = imbinarize(res);
figure("Name", "laplas moon bw"),imshow(bin_res,[])
better_img = d_img - res;
figure("Name", "laplas better moon"),imshow(better_img,[])