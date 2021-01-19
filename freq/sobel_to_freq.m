img=imread('Fig7.tif');
F=fft2(img);
S=fftshift(log(1+abs(F)));
S=mat2gray(S);
figure;imshow(img);
figure, imshow (S);

h = fspecial("sobel");
figure; freqz2(h)

PQ=paddedsize(size(img));
H = freqz2(h, PQ(1), PQ(2));
H1 = ifftshift(H);

figure; imshow(abs(H), []);
figure; imshow(abs(H1), []);

gs = imfilter(double(img), h);
gf= dftfilt(img, H1);
figure; imshow(abs(gs), [])
figure; imshow(abs(gf), [])

diff = abs(gf - gs);
max(diff(:))