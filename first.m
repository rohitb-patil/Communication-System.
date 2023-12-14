fs  = 100;
t = 1/fs ;
t_c = 0:0.001:1;
t_d= 0:1/fs:1;
f = 5;

m  = cos(2*pi *f*t_c);
s = cos(2*pi*f*t_d);


rec = zeros(1,length(t_d));

for i=1:length(t_d)
    index = find(t_c>=t_d(i),1,"first");
    rec(index) = s(i);

end

rec = lowpass(rec,2*f,1000);
figure;
subplot(3,1,1);
plot(t_c,m);
subplot(3,1,2);
stem(t_d,s);
subplot(3,1,3);
plot(t_c,rec);
