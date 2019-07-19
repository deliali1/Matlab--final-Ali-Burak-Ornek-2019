im=imread('pout.tif'); %matlabin hazir resimi pout oku
figure %pencere aç
imshow(im) %resim göster
kontrastim=linScaling(im); %linscaling fonksiyonu çalýþtýr
figure %ikinci pencere aç
imshow(kontrastim) % lin scaling yapýlmýþ resim göster 
