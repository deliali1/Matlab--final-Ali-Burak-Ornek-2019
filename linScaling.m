function im_scaled = linScaling(im)
% Linearly scale image intensity values to the range 0 to 255.
% im: 2-d array of image intensity data in type uint8
% im_scaled: type uint8 2-d array obtained by linearly scaling (mapping)
% the values of im to the range 0 to 255.
im2=im2double(im); % netlik i�in double yapt�k
mx=max(max(im2));%resimdeki  maksimum piksel de�erini bulmak i�in
mn=min(min(im2));
im3=(im2-mn)*(1/(mx-mn))+0; % lin scale kontrast i�in formul bu websitesinden
%https://www.experts-exchange.com/questions/28026758/Doing-contrast-stretch-on-an-image-in-Matlab.html
im_scaled=im2uint8(im3);