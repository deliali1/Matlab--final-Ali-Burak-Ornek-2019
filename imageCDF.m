function C = imageCDF(histo,im)
%C is the CDF of an image im with histogram histo.
% histo: Vector of type double representing the histogram (distribution) of
% an image. histo(i+1) is the number of pixels with intensity i, where
% i=0,1,...,255.
% im: 2-d array of image data in type uint8

[r,c]=size(im);
n = r*c;


pdf = zeros(256,1);
cdf = zeros(256,1);
C = zeros(256,1);
cum = zeros(256,1);

conHist=histo';

for i = 1:r
    for j = 1:c
        val = im(i,j);
         pdf(val+1) = conHist(val+1)/n;
    end
end

sum = 0;
L = 255;

for i = 1:size(pdf)
    sum = sum + conHist(i);
    cum(i) = sum;
    cdf(i) = cum(i)/n;
    C(i) = round(cdf(i)*L);
end

