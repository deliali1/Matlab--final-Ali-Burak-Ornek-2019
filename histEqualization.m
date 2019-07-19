function im_equalized = histEqualization(im,histo)
%Compute image intensity values by using histogram equalization algorithm.
% im: 2-d array of image intensity data in type uint8
% im_equalized: 2-d array of image intensity values in type double,
% histo: Vector of type double representing the histogram (distribution) of
% an image. histo(i+1) is the number of pixels with intensity i, where
% i=0,1,...,255.

[r,c]=size(im);
im_equalized = uint8(zeros(r,c));

 C = imageCDF(histo,im);
 
 for i = 1:r
    for j = 1:c
        im_equalized(i,j) = C(im(i,j)+1);
    end
end