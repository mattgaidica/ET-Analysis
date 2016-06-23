function binaryDataSnip = binarySnipFromMtcToi(mtcData,mtcFs,binaryData,Fs)
figure;
t = linspace(0,length(mtcData)/mtcFs/60,length(mtcData));
plot(t,mtcData / 1000);
xlabel('Time (min)');
ylabel('DV (mm)');

disp('-----');
disp('Select START and END Time of Interest (TOI)...');
[xs,ys] = ginput(2)

hold on;
plot(xs(1),ys(1),'o','color','r');
plot(xs(2),ys(2),'x','color','r');

xsBinary = round(xs * 60 * Fs)
binaryDataSnip = binaryData(xsBinary(1):xsBinary(2));

disp(['Returning ',num2str(diff(xs)),' minutes of binary data']);
disp('-----');