img=double(imread('Fig7.tif'));
F=fft2(img);
figure;imshow(F)

S=abs(F);
figure;imshow(S,[]);
Fc=fftshift(F);
V=abs(Fc);
figure;imshow(V,[]);
S2=log(1+abs(Fc));
figure;imshow(S2,[]);
F=ifftshift(Fc);
f=ifft2(F);
f=real(ifft2(f));
figure("Name", "ifft");imshow (f)