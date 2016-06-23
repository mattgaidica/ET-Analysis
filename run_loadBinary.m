Fs = 30000;
mtcFs = 40;

% single units in ii=11, beginning of DV=15mm
ii = 15;

fid = fopen(ET_PATH(ii).binary);
binaryData = fread(fid,'int16');
mtcData = csvread(ET_PATH(ii).mtc);

disp('-----');
disp(ET_PATH(ii).patient);
disp(['bin minutes: ',num2str(length(binaryData) / Fs / 60)]);
disp(['mtc minutes: ',num2str(length(mtcData) / mtcFs / 60)]);
disp('-----');