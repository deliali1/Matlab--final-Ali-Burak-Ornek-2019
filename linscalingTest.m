im=imread('pout.tif'); %matlabin hazir resimi pout oku
figure %pencere a�
imshow(im) %resim g�ster
kontrastim=linScaling(im); %linscaling fonksiyonu �al��t�r
figure %ikinci pencere a�
imshow(kontrastim) % lin scaling yap�lm�� resim g�ster 
