img = imread("Fig4.tif");
figure; imshow(img);
figure; imhist(img);
adj2 = imadjust(img);
figure; imshow(adj2);
figure; imhist(adj2);
eq_adj2 = histeq(img);
figure; imshow(eq_adj2); 
figure; imhist(eq_adj2);