
H=fftshift(hpfilter('ideal', 500, 500, 50));
figure, mesh(H(1:10:500, 1:10:500));


H=fftshift(lpfilter('ideal', 500, 500, 50));
figure, mesh(H(1:10:500, 1:10:500));


H=fftshift(hpfilter('gaussian', 500, 500, 50));
figure, mesh(H(1:10:500, 1:10:500));


H=fftshift(lpfilter('gaussian', 500, 500, 50));
figure, mesh(H(1:10:500, 1:10:500));


H=fftshift(hpfilter('bt', 500, 500, 50));
figure, mesh(H(1:10:500, 1:10:500));


H=fftshift(lpfilter('btw', 500, 500, 50));
figure, mesh(H(1:10:500, 1:10:500));