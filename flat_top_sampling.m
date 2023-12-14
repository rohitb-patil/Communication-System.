
fc = 20;%square plot frequncy
fm =2;%message fre
fs = 1000;%sampling rate 
t=1;
n = [0:1/fs:t];

n = n(1:end-1);
dutycycle = 50;
s = square(2*pi*fc*n,dutycycle);
s(find(s<0))=0;   %to make it unipolar
%plot(s);
m = sin(2*pi*fm*n);
period_sam = length(n)/fc;     %to find the number of samples in one period
ind = 1:period_sam:length(n);   %to find the starting sample index
on_samp = ceil(period_sam * dutycycle/100);   %no. of samples in on period of time
pam = zeros(1,length(n));
for i =1:length(ind)
    pam(ind(i):ind(i)+on_samp) = m(ind(i));
end
subplot(3,1,1); 
plot(n,s);
ylim([-0.2 1.2]);
subplot(3,1,2);
plot(n,m);
ylim([-1.2 1.2]); 
subplot(3,1,3);
plot(n,pam);
ylim([-1.2 1.2]);

