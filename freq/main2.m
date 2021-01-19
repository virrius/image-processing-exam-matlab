img=imread('Fig7.tif');
F=fft2(img);
S=fftshift(log(1+abs(F)));
S=mat2gray(S);
imshow(img), figure, imshow (S);



PQ=paddedsize(size(img));
[U, V]=dftuv(PQ(1), PQ(2));
D0=0.05*PQ(2);
F=fft2(img, PQ(1), PQ(2));
H=exp(-(U.^2+V.^2)/(2*(D0^2)));
g=dftfilt(img, H);
figure, imshow(fftshift(H), []);
figure, imshow(g, []);
figure, mesh(H(1:10:500, 1:10:500));

H=fftshift (lpfilter ('gaussian', 500, 500, 50));
figure;mesh(H(1:10:500, 1:10:500))
figure, imshow (H, []);

PQ=paddedsize (size(img));
D0=0.05.*PQ(1);
HBW=lpfilter('btw', PQ(1), PQ(2), D0,2);
H=0.5+2*HBW;
gbw=dftfilt(img, HBW);
gbw=gscale(gbw);
ghf=dftfilt(img, H);
gbf=gscale(ghf);
f1=histeq(img, 256);
ghe=histeq(ghf, 256);
figure, imshow (img);
figure, imshow (ghe, []);
figure, imshow (f1, []);