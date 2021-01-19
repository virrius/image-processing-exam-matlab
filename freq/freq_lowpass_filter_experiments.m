img = imread('Fig10.tif');
S=fftshift(log(1+abs(F)));
S=mat2gray(S);
imshow(img), figure, imshow (S);


PQ=paddedsize(size(img));
[U, V]=dftuv(PQ(1), PQ(2));
D0=0.5*PQ(2);
F=fft2(img, PQ(1), PQ(2));
H=lpfilter('ideal', PQ(1), PQ(2), D0,2);
g=dftfilt(img, H);
figure, imshow(fftshift(H), []);
figure, imshow(gscale(g), []);
figure, imshow(imadjust(gscale(g)), []);
figure, mesh(H(1:10:500, 1:10:500));