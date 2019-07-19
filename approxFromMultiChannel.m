function [t, idxGlobalMin, idxGlobalMax] = approxFromMultiChannel(D) %Fonksiyon oluþtur
% Estimate temperature at all locations from multi-channel sensors; one
% multi-channel sensor is deployed at each location.
[m,n] = size(D); %size Dnin büyüklüðü m ve n ye aktarýr, m = sensor, n= kanal
S=sum(D);%sum Dnin bütün kanal deðerleri toplayýp Sye aktarýr
[h,idxGlobalMax]=max(S); %max S matrixte  maximum sýcakliði bulur, h sýcaklýk deðeri gösterir
%(h sicaklik rakam, idGlobalMax hangi Kanalda maximum sýcaklýk gösterir)
[l,idxGlobalMin]=min(S);  %min S matrixte  maximum sýcakliði bulur
D(:,[idxGlobalMax,idxGlobalMin])=[]; %max ve min kanallarý çýkart
tot=sum(D,2);  %tot kalan kanallarýn toplamý   
t=(tot/(n-2)); %t ortalama sýcaklýðý