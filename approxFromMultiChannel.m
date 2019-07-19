function [t, idxGlobalMin, idxGlobalMax] = approxFromMultiChannel(D) %Fonksiyon olu�tur
% Estimate temperature at all locations from multi-channel sensors; one
% multi-channel sensor is deployed at each location.
[m,n] = size(D); %size Dnin b�y�kl��� m ve n ye aktar�r, m = sensor, n= kanal
S=sum(D);%sum Dnin b�t�n kanal de�erleri toplay�p Sye aktar�r
[h,idxGlobalMax]=max(S); %max S matrixte  maximum s�cakli�i bulur, h s�cakl�k de�eri g�sterir
%(h sicaklik rakam, idGlobalMax hangi Kanalda maximum s�cakl�k g�sterir)
[l,idxGlobalMin]=min(S);  %min S matrixte  maximum s�cakli�i bulur
D(:,[idxGlobalMax,idxGlobalMin])=[]; %max ve min kanallar� ��kart
tot=sum(D,2);  %tot kalan kanallar�n toplam�   
t=(tot/(n-2)); %t ortalama s�cakl���