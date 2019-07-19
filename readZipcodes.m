function [ruralZip, nonRuralZip] = readZipcodes(zipFile, rThresh)

 fid= fopen([zipFile '.txt'], 'r');
  fid= fopen('NYZipcodes.txt')
 k=0;
 while ~feof(fid)
   k= k+1;
   C(k) = textscan(fid, '%s%d8%*s%f32');
   CA{k}=fgetl(fid);
   Z{k}= MakeZipcode(CA);
end
fclose(fid);


% 
% function CA = file2cellArray(fname)
% fname is a string that names a .txt file in the current directory.
% CA is a cell array with CA{k} being the k-th line in the file.
% 
% fid= fopen([fname '.txt'], 'r');
% k= 0;
% while ~feof(fid)
%    k= k+1;
%    CA{k}= fgetl(fid);
% end
% fclose(fid);