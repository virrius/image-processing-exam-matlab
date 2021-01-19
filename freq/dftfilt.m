% М-функцию, аргументами которой
% являются изображение и передаточная функция фильтра, которая выполняет все
% необходимые процедуры фильтрации и возвращает отфильтрованное и обрезанное изображение. 

function g =dftfilt(f, H)
    F=fft2(f, size(H,1), size(H,2));
    Gi=H.*F;
    g=real(ifft2(Gi));
    g=g(1:size(f,1),1:size(f,2));
end