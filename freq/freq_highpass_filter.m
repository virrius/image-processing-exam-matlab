img = imread('Fig10.tif');
S=fftshift(log(1+abs(F)));
S=mat2gray(S);
imshow(img), figure, imshow (S);


PQ=paddedsize(size(img));
D0=0.5*PQ(2);
F=fft2(img, PQ(1), PQ(2));
H=hpfilter('gaussian', 500, 500, D0);
g=dftfilt(img, H);
figure, imshow(fftshift(H), []);
figure, imshow(gscale(g), []);
figure, imshow(imadjust(gscale(g)), []);
figure, mesh(H(1:10:500, 1:10:500));