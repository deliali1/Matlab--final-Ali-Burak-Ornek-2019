function histo = calcHist(im)
% Compute the historgram of im
% im: 2-d array of image data in type uint8
% histo: Vector of type double representing the histogram of pixel values of im
[r,c]=size(im);
histo=zeros(1,256);
for i=1:r
 for j=1:c
    z=im(i,j);
   histo(z+1)=histo(z+1)+1;
end
end


